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

import com.shamcode.abclab.model.Patient;
import com.shamcode.abclab.service.PatientRegService;

@WebServlet("/patientregController")
public class PatientRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String type = request.getParameter("type");
	        PatientRegService patientregService = PatientRegService.getPatientregServiceInstance();

	        
	       if (type != null && type.equals("add")) {
	            addPatient(request, response, patientregService);
	        }
	        
	    }
	    private void addPatient(HttpServletRequest request, HttpServletResponse response, PatientRegService service)
	            throws ServletException, IOException {
	        String name = request.getParameter("patientName");
	        String dateOfBirth = request.getParameter("dateOfBirth");
	        String gender = request.getParameter("gender");
	        String contactNumber = request.getParameter("contactNumber");
	        String email = request.getParameter("email");
	        String address = request.getParameter("address");
	        String medicalProblems = request.getParameter("medicalProblems");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        Patient patient = new Patient(name, dateOfBirth, gender, contactNumber, email, address, medicalProblems,
	                username, password);

	        boolean result;
	        String message = "";
	        try {
	            result = service.registerPatient(patient);
	            if (result) {
	                message = "Patient " + name + " has been successfully added!";
	            } else {
	                message = "Failed to add the patient! Patient: " + name;
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	        }

	        request.setAttribute("message", message);

	        RequestDispatcher rd = request.getRequestDispatcher("Patientlogin.jsp");
	        rd.forward(request, response);
	    }


}
