package com.shamcode.abclab.controller;

import com.shamcode.abclab.model.Appointment;
import com.shamcode.abclab.service.AppointmentService;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/appointmentController")
public class AppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        AppointmentService appointmentService = AppointmentService.getAppointmentServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificAppointment(request, response, appointmentService);
        } else {
            getAllAppointments(request, response, appointmentService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        AppointmentService appointmentService = AppointmentService.getAppointmentServiceInstance();

        if (type != null && type.equals("update")) {
            updateAppointment(request, response, appointmentService);
        } else if (type != null && type.equals("add")) {
            scheduleAppointment(request, response, appointmentService);
        } else if (type != null && type.equals("delete")) {
            cancelAppointment(request, response, appointmentService);
        }
    }

    private void getAllAppointments(HttpServletRequest request, HttpServletResponse response, AppointmentService service) throws ServletException, IOException {
        String message = "";
        List<Appointment> appointmentList;

        try {
            appointmentList = service.getAllAppointments();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            appointmentList = new ArrayList<>();
        }

        request.setAttribute("message", message);
        request.setAttribute("appointmentList", appointmentList);

        RequestDispatcher rd = request.getRequestDispatcher("Appointment.jsp");
        rd.forward(request, response);
    }

    private void getSpecificAppointment(HttpServletRequest request, HttpServletResponse response, AppointmentService service) throws ServletException, IOException {
        String appointmentIdStr = request.getParameter("appointmentID");
        int appointmentID;
        Appointment appointment;
        String message = "";

        if (appointmentIdStr != null && !appointmentIdStr.isEmpty()) {
            try {
                appointmentID = Integer.parseInt(appointmentIdStr);
                appointment = service.getSpecificAppointment(appointmentID);
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                message = e.getMessage();
                appointment = new Appointment();
            }
        } else {
            message = "Appointment ID is missing or invalid.";
            appointment = new Appointment();
        }

        request.setAttribute("appointment", appointment);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-appointment.jsp");
        rd.forward(request, response);
    }

    private void updateAppointment(HttpServletRequest request, HttpServletResponse response, AppointmentService service) throws ServletException, IOException {
        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
        String userName = request.getParameter("userName");
        String appointmentDateStr = request.getParameter("appointmentDate");
        String testName = request.getParameter("testName");
        String appointmentRequest = request.getParameter("appointmentRequest");

        // Parsing appointmentDateStr to java.sql.Date
        java.sql.Date appointmentDate = null;
        if (appointmentDateStr != null && !appointmentDateStr.isEmpty()) {
            appointmentDate = java.sql.Date.valueOf(appointmentDateStr);
        }

        Appointment appointment = new Appointment(appointmentID, userName, appointmentDate, testName, appointmentRequest);

        boolean result;
        String message = "";
        try {
            result = service.updateAppointmentDetails(appointment);
            if (result) {
                message = "Appointment " + appointmentID + " has been successfully updated!";
            } else {
                message = "Failed to update the appointment! Appointment ID: " + appointmentID;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-appointment.jsp");
        rd.forward(request, response);
    }

    private void scheduleAppointment(HttpServletRequest request, HttpServletResponse response, AppointmentService service) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String appointmentDateStr = request.getParameter("appointmentDate");
        String testName = request.getParameter("testName");
        String appointmentRequest = request.getParameter("appointmentRequest");

        // Parsing appointmentDateStr to java.sql.Date
        java.sql.Date appointmentDate = null;
        if (appointmentDateStr != null && !appointmentDateStr.isEmpty()) {
            appointmentDate = java.sql.Date.valueOf(appointmentDateStr);
        }

        Appointment appointment = new Appointment(userName, appointmentDate, testName, appointmentRequest);

        boolean result;
        String message = "";
        try {
            result = service.scheduleAppointment(appointment);
            if (result) {
                message = "Appointment has been successfully scheduled!";
            } else {
                message = "Failed to schedule the appointment!";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("add-appointment.jsp");
        rd.forward(request, response);
    }

    private void cancelAppointment(HttpServletRequest request, HttpServletResponse response, AppointmentService service) throws ServletException, IOException {
        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));

        boolean result;
        String message = "";
        try {
            result = service.cancelAppointment(appointmentID);
            if (result) {
                message = "Appointment with ID " + appointmentID + " has been successfully canceled!";
            } else {
                message = "Failed to cancel the appointment! Appointment ID: " + appointmentID;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        HttpSession session = request.getSession();

        try {
            List<Appointment> appointmentList = service.getAllAppointments();
            session.setAttribute("appointmentList", appointmentList);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        session.setAttribute("message", message);
        response.sendRedirect("Appointment.jsp");
    }
}
