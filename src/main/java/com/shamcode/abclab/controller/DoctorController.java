package com.shamcode.abclab.controller;

import com.shamcode.abclab.model.Doctor;
import com.shamcode.abclab.service.DoctorService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/doctorController")
public class DoctorController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        DoctorService doctorService = DoctorService.getDoctorServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificDoctor(request, response, doctorService);
        } else {
            getAllDoctors(request, response, doctorService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        DoctorService doctorService = DoctorService.getDoctorServiceInstance();

        if (type != null && type.equals("update")) {
            updateDoctor(request, response, doctorService);
        } else if (type != null && type.equals("add")) {
            addDoctor(request, response, doctorService);
        } else if (type != null && type.equals("delete")) {
            deleteDoctor(request, response, doctorService);
        }
    }

    private void getAllDoctors(HttpServletRequest request, HttpServletResponse response, DoctorService service) throws ServletException, IOException {
        String message = "";
        List<Doctor> doctorList;

        try {
            doctorList = service.getAllDoctors();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            doctorList = new ArrayList<>();
        }

        request.setAttribute("message", message);
        request.setAttribute("doctorList", doctorList);

        RequestDispatcher rd = request.getRequestDispatcher("Doctor.jsp");
        rd.forward(request, response);
    }

    private void getSpecificDoctor(HttpServletRequest request, HttpServletResponse response, DoctorService service) throws ServletException, IOException {
        String doctorIdStr = request.getParameter("doctorID");
        int doctorID;
        Doctor doctor;
        String message = "";

        if (doctorIdStr != null && !doctorIdStr.isEmpty()) {
            try {
                doctorID = Integer.parseInt(doctorIdStr);
                doctor = service.getSpecificDoctor(doctorID);
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                message = e.getMessage();
                doctor = new Doctor();
            }
        } else {
            message = "Doctor ID is missing or invalid.";
            doctor = new Doctor();
        }

        request.setAttribute("doctor", doctor);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-Doctor.jsp");
        rd.forward(request, response);
    }

    private void updateDoctor(HttpServletRequest request, HttpServletResponse response, DoctorService service) throws ServletException, IOException {
        int doctorID = Integer.parseInt(request.getParameter("doctorID"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String specialistType = request.getParameter("specialistType");

        Doctor doctor = new Doctor(doctorID, firstName, lastName, phoneNumber, address, email, specialistType);

        boolean result;
        String message = "";
        try {
            result = service.editTheDoctor(doctor);
            if (result) {
                message = "Doctor " + doctorID + " has been successfully updated!";
            } else {
                message = "Failed to update the doctor! Doctor ID: " + doctorID;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-Doctor.jsp");
        rd.forward(request, response);
    }

    private void addDoctor(HttpServletRequest request, HttpServletResponse response, DoctorService service) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String specialistType = request.getParameter("specialistType");

        Doctor doctor = new Doctor(0, firstName, lastName, phoneNumber, address, email, specialistType);

        boolean result;
        String message = "";
        try {
            result = service.registerDoctor(doctor);
            if (result) {
                message = "Doctor " + firstName + " " + lastName + " has been successfully added!";
            } else {
                message = "Failed to add the doctor!";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("add-Doctor.jsp");
        rd.forward(request, response);
    }

    private void deleteDoctor(HttpServletRequest request, HttpServletResponse response, DoctorService service) throws ServletException, IOException {
        int doctorID = Integer.parseInt(request.getParameter("doctorID"));

        boolean result;
        String message = "";
        try {
            result = service.deleteTheDoctor(doctorID);
            if (result) {
                message = "Doctor ID " + doctorID + " has been successfully deleted!";
            } else {
                message = "Failed to delete the doctor! Doctor ID: " + doctorID;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        HttpSession session = request.getSession();

        try {
            List<Doctor> doctorList = service.getAllDoctors();
            session.setAttribute("doctorList", doctorList);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        session.setAttribute("message", message);
        response.sendRedirect("Doctor.jsp");
    }
}
