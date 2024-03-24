package com.shamcode.abclab.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shamcode.abclab.model.Appointment;
import com.shamcode.abclab.service.AppointmentService;

public class AppointmentController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");
        AppointmentService appointmentService = AppointmentService.getAppointmentServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificAppointment(request, response, appointmentService);
        } else {
            getAllAppointments(request, response, appointmentService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");
        AppointmentService appointmentService = AppointmentService.getAppointmentServiceInstance();

        if (type != null && type.equals("update")) {
            updateAppointment(request, response, appointmentService);
        } else if (type != null && type.equals("add")) {
            addAppointment(request, response, appointmentService);
        } else if (type != null && type.equals("delete")) {
            deleteAppointment(request, response, appointmentService);
        }
    }

    private void getAllAppointments(HttpServletRequest request, HttpServletResponse response,
            AppointmentService service) throws ServletException, IOException {

        String message = "";
        List<Appointment> appointmentList;

        try {
            appointmentList = service.getAllAppointments();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            appointmentList = new ArrayList<Appointment>();
        }

        request.setAttribute("message", message);
        request.setAttribute("appointmentList", appointmentList);

        RequestDispatcher rd = request.getRequestDispatcher("Appointment.jsp");
        rd.forward(request, response);
    }

    private void getSpecificAppointment(HttpServletRequest request, HttpServletResponse response,
            AppointmentService service) throws ServletException, IOException {

        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
        Appointment appointment;
        String message = "";
        try {
            appointment = service.getSpecificAppointment(appointmentID);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            appointment = new Appointment();
        }

        request.setAttribute("appointment", appointment);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-appointment.jsp");
        rd.forward(request, response);
    }

    private void updateAppointment(HttpServletRequest request, HttpServletResponse response,
            AppointmentService service) throws ServletException, IOException {

        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
        String userName = request.getParameter("userName");
        String appointmentDate = request.getParameter("appointmentDate");
        String testName = request.getParameter("testName");
        String doctorName = request.getParameter("doctorName");
        String appointmentRequest = request.getParameter("appointmentRequest");

        Appointment appointment = new Appointment(appointmentID, userName , appointmentDate ,
                testName,doctorName, appointmentRequest);

        boolean result;
        String message = "";
        try {
            result = service.editTheAppointment(appointment);
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

    private void addAppointment(HttpServletRequest request, HttpServletResponse response,
            AppointmentService service) throws ServletException, IOException {

    	 String userName = request.getParameter("userName");
         String appointmentDate = request.getParameter("appointmentDate");
         String testName = request.getParameter("testName");
         String doctorName = request.getParameter("doctorName");
         String appointmentRequest = request.getParameter("appointmentRequest");

        Appointment appointment = new Appointment( userName , appointmentDate ,
                testName,doctorName, appointmentRequest);

        boolean result;
        String message = "";
        try {
            result = service.registerAppointment(appointment);
            if (result) {
                message = "Appointment for UserName " + userName + " has been successfully added!";
            } else {
                message = "Failed to add the appointment!";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("add-appointment.jsp");
        rd.forward(request, response);
    }

    private void deleteAppointment(HttpServletRequest request, HttpServletResponse response,
            AppointmentService service) throws ServletException, IOException {

        int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));

        boolean result;
        String message = "";
        try {
            result = service.deleteTheAppointment(appointmentID);
            if (result) {
                message = "Appointment ID " + appointmentID + " has been successfully deleted!";
            } else {
                message = "Failed to delete the appointment! Appointment ID: " + appointmentID;
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