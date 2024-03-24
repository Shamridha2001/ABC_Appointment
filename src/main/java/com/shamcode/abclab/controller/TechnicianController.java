package com.shamcode.abclab.controller;

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

import com.shamcode.abclab.model.Technician;
import com.shamcode.abclab.service.TechnicianService;

@WebServlet("/technicianController")
public class TechnicianController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        TechnicianService technicianService = TechnicianService.getTechnicianServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificTechnician(request, response, technicianService);
        } else {
            getAllTechnicians(request, response, technicianService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        TechnicianService technicianService = TechnicianService.getTechnicianServiceInstance();

        if (type != null && type.equals("update")) {
            updateTechnician(request, response, technicianService);
        } else if (type != null && type.equals("add")) {
            addTechnician(request, response, technicianService);
        } else if (type != null && type.equals("delete")) {
            deleteTechnician(request, response, technicianService);
        }
    }

    private void getAllTechnicians(HttpServletRequest request, HttpServletResponse response, TechnicianService service) throws ServletException, IOException {
        String message = "";
        List<Technician> technicianList;

        try {
            technicianList = service.getAllTechnicians();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            technicianList = new ArrayList<>();
        }

        request.setAttribute("message", message);
        request.setAttribute("technicianList", technicianList);

        RequestDispatcher rd = request.getRequestDispatcher("Technician.jsp");
        rd.forward(request, response);
    }

    private void getSpecificTechnician(HttpServletRequest request, HttpServletResponse response, TechnicianService service) throws ServletException, IOException {
        String technicianIdStr = request.getParameter("technicianId");
        int technicianId;
        Technician technician;
        String message = "";

        if (technicianIdStr != null && !technicianIdStr.isEmpty()) {
            try {
                technicianId = Integer.parseInt(technicianIdStr);
                technician = service.getSpecificTechnician(technicianId);
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                message = e.getMessage();
                technician = new Technician();
            }
        } else {
            message = "Technician ID is missing or invalid.";
            technician = new Technician();
        }

        request.setAttribute("technician", technician);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-technician.jsp");
        rd.forward(request, response);
    }

    private void updateTechnician(HttpServletRequest request, HttpServletResponse response, TechnicianService service) throws ServletException, IOException {
        int technicianId = Integer.parseInt(request.getParameter("technicianId"));
        String name = request.getParameter("technicianName");
        String specialization = request.getParameter("technicianSpecialization");

        Technician technician = new Technician(technicianId, name, specialization);

        boolean result;
        String message = "";
        try {
            result = service.editTheTechnician(technician);
            if (result) {
                message = "Technician " + technicianId + " has been successfully updated!";
            } else {
                message = "Failed to update the technician! Technician ID: " + technicianId;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-technician.jsp");
        rd.forward(request, response);
    }

    private void addTechnician(HttpServletRequest request, HttpServletResponse response, TechnicianService service) throws ServletException, IOException {
        String name = request.getParameter("technicianName");
        String specialization = request.getParameter("technicianSpecialization");

        Technician technician = new Technician(name, specialization);

        boolean result;
        String message = "";
        try {
            result = service.registerTechnician(technician);
            if (result) {
                message = "Technician " + name + " has been successfully added!";
            } else {
                message = "Failed to add the technician! Technician: " + name;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("add-technician.jsp");
        rd.forward(request, response);
    }

    private void deleteTechnician(HttpServletRequest request, HttpServletResponse response, TechnicianService service) throws ServletException, IOException {
        int technicianId = Integer.parseInt(request.getParameter("technicianId"));

        boolean result;
        String message = "";
        try {
            result = service.deleteTheTechnician(technicianId);
            if (result) {
                message = "Technician with ID " + technicianId + " has been successfully deleted!";
            } else {
                message = "Failed to delete the technician! Technician ID: " + technicianId;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        HttpSession session = request.getSession();

        try {
            List<Technician> technicianList = service.getAllTechnicians();
            session.setAttribute("technicianList", technicianList);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        session.setAttribute("message", message);
        response.sendRedirect("Technician.jsp");
    }
}
