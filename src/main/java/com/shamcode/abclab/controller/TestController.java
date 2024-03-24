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

@WebServlet("/testController")

public class TestController extends HttpServlet {
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
    	else if(type != null && type.equals("add")) {
        	addTest(request, response, testService);
    	}
    	else if(type != null && type.equals("delete")) {
        	deleteTest(request, response, testService);
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
		
    	RequestDispatcher rd = request.getRequestDispatcher("Test.jsp");
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

	    RequestDispatcher rd = request.getRequestDispatcher("search-update-test.jsp");
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
	    
	    RequestDispatcher rd = request.getRequestDispatcher("search-update-test.jsp");
	    rd.forward(request, response);
	}

	
	private void addTest(HttpServletRequest request, HttpServletResponse response, TestService service) throws ServletException, IOException {
		
		String name = request.getParameter("productName");
		double price = Double.parseDouble(request.getParameter("price"));
		
		Test_dtl test =  new Test_dtl(name, price);
		
		boolean result;
		String message = "";
		try {
			result = service.registerTest(test);
			if(result) {
				message = "Test " + name + " has been successfully added!";
			}
			else {
				message = "failed to add the product! Test: " + name;
			}
		} catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
		
		request.setAttribute("message", message);
		
		RequestDispatcher rd = request.getRequestDispatcher("add-Test.jsp");
		rd.forward(request, response);
	}
	
	private void deleteTest(HttpServletRequest request, HttpServletResponse response, TestService service) throws ServletException, IOException {
		
		int testid = Integer.parseInt(request.getParameter("testid"));
		
		boolean result;
		String message = "";
		try {
			result = service.deleteTheTest(testid);
			if(result) {
				message = "Test Code" + testid + " has been successfully deleted!";
			}
			else {
				message = "failed to add the product! Test Code: " + testid;
			}
		} catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
				
		HttpSession session = request.getSession();
		
		try {
			List<Test_dtl> testList = service.getAllTests();
			session.setAttribute("testList", testList);
		} catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
		
		session.setAttribute("message", message);
		response.sendRedirect("Test.jsp");
	}

}
