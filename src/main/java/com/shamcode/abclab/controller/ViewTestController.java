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

import com.shamcode.abclab.model.Test_dtl;
import com.shamcode.abclab.service.TestService;

@WebServlet("/viewtestController")

public class ViewTestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
    	TestService testService = TestService.getTestServiceInstance();
    	
    	if(type != null && type.equals("specific")) {
    		getSpecificTest(request, response, testService);
    	}
    	else {
        	getAllTests(request, response, testService);
    	}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		TestService testService = TestService.getTestServiceInstance();
    	
    	if(type != null && type.equals("update")) {
    		updateTest(request, response, testService);
    	}
    	
	}
	
	private void getAllTests(HttpServletRequest request, HttpServletResponse response, TestService service) throws ServletException, IOException {
		
		String message = "";
		List<Test_dtl> testList;
		
		try {
			testList = service.getAllTests();
		} catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
			testList = new ArrayList<Test_dtl>();
		}
		
		request.setAttribute("message", message);
		request.setAttribute("testList", testList);
		
    	RequestDispatcher rd = request.getRequestDispatcher("ViewTest.jsp");
    	rd.forward(request, response);
	}

	private void getSpecificTest(HttpServletRequest request, HttpServletResponse response, TestService service) throws ServletException, IOException {
	    String testIdStr = request.getParameter("testid");
	    int testId;
	    Test_dtl test;
	    String message = "";

	    if (testIdStr != null && !testIdStr.isEmpty()) {
	        try {
	            testId = Integer.parseInt(testIdStr);
	            test = service.getSpecificTest(testId);
	        } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
	            message = e.getMessage();
	            test = new Test_dtl();
	        }
	    } else {
	        message = "Test ID is missing or invalid.";
	        test = new Test_dtl();
	    }

	    request.setAttribute("test", test);
	    request.setAttribute("message", message);

	    RequestDispatcher rd = request.getRequestDispatcher("ViewTest.jsp");
	    rd.forward(request, response);
	}


	private void updateTest(HttpServletRequest request, HttpServletResponse response, TestService service) throws ServletException, IOException {
	    int testid = Integer.parseInt(request.getParameter("testid"));
	    String name = request.getParameter("testName");
	    String priceParam = request.getParameter("testPrice");
	    
	    // Check if priceParam is not null before parsing it
	    double price = 0.0; // Default value if priceParam is null
	    if (priceParam != null && !priceParam.isEmpty()) {
	        price = Double.parseDouble(priceParam);
	    }
	    
	    Test_dtl test =  new Test_dtl(testid, name, price);
	    
	    boolean result;
	    String message = "";
	    try {
	        result = service.editTheTest(test);
	        if(result) {
	            message = "Test " + testid + " has been successfully updated!";
	        }
	        else {
	            message = "failed to update the product! Test Code: " + testid;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        message = e.getMessage();
	    }
	    
	    request.setAttribute("message", message);
	    
	    RequestDispatcher rd = request.getRequestDispatcher("ViewTest.jsp");
	    rd.forward(request, response);
	}

	
	

}
