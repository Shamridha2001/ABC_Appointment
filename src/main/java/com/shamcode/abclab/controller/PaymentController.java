package com.shamcode.abclab.controller;

import com.shamcode.abclab.model.Payment;
import com.shamcode.abclab.service.PaymentService;

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

@WebServlet("/paymentController")
public class PaymentController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        PaymentService paymentService = PaymentService.getPaymentServiceInstance();

        if (type != null && type.equals("specific")) {
            getSpecificPayment(request, response, paymentService);
        } else {
            getAllPayments(request, response, paymentService);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        PaymentService paymentService = PaymentService.getPaymentServiceInstance();

        if (type != null && type.equals("update")) {
            updatePayment(request, response, paymentService);
        } else if (type != null && type.equals("add")) {
            makePayment(request, response, paymentService);
        } else if (type != null && type.equals("delete")) {
            cancelPayment(request, response, paymentService);
        }
    }

    private void getAllPayments(HttpServletRequest request, HttpServletResponse response, PaymentService service) throws ServletException, IOException {
        String message = "";
        List<Payment> paymentList;

        try {
            paymentList = service.getAllPayments();
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            paymentList = new ArrayList<>();
        }

        request.setAttribute("message", message);
        request.setAttribute("paymentList", paymentList);

        RequestDispatcher rd = request.getRequestDispatcher("Payment.jsp");
        rd.forward(request, response);
    }

    private void getSpecificPayment(HttpServletRequest request, HttpServletResponse response, PaymentService service) throws ServletException, IOException {
        String paymentIdStr = request.getParameter("paymentId");
        int paymentId;
        Payment payment;
        String message = "";

        if (paymentIdStr != null && !paymentIdStr.isEmpty()) {
            try {
                paymentId = Integer.parseInt(paymentIdStr);
                payment = service.getSpecificPayment(paymentId);
            } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
                message = e.getMessage();
                payment = new Payment();
            }
        } else {
            message = "Payment ID is missing or invalid.";
            payment = new Payment();
        }

        request.setAttribute("payment", payment);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-payment.jsp");
        rd.forward(request, response);
    }

    private void updatePayment(HttpServletRequest request, HttpServletResponse response, PaymentService service) throws ServletException, IOException {
        int paymentId = Integer.parseInt(request.getParameter("paymentId"));
        int patientId = Integer.parseInt(request.getParameter("patientId"));
        double amount = Double.parseDouble(request.getParameter("amount"));
        String paymentDate = request.getParameter("paymentDate");
        String cardholderName = request.getParameter("cardholderName");
        int cardNo = Integer.parseInt(request.getParameter("cardNo"));
        String exDate = request.getParameter("exDate");
        int cvcNo = Integer.parseInt(request.getParameter("cvcNo"));

        Payment payment = new Payment(paymentId, patientId, amount, paymentDate, cardholderName, cardNo, exDate, cvcNo);

        boolean result;
        String message = "";
        try {
            result = service.updatePayment(payment);
            if (result) {
                message = "Payment " + paymentId + " has been successfully updated!";
            } else {
                message = "Failed to update the payment! Payment ID: " + paymentId;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("search-update-payment.jsp");
        rd.forward(request, response);
    }

    private void makePayment(HttpServletRequest request, HttpServletResponse response, PaymentService service) throws ServletException, IOException {
        int patientId = Integer.parseInt(request.getParameter("patientId"));
        double amount = Double.parseDouble(request.getParameter("amount"));
        String paymentDate = request.getParameter("paymentDate");
        String cardholderName = request.getParameter("cardholderName");
        int cardNo = Integer.parseInt(request.getParameter("cardNo"));
        String exDate = request.getParameter("exDate");
        int cvcNo = Integer.parseInt(request.getParameter("cvcNo"));

        Payment payment = new Payment(0, patientId, amount, paymentDate, cardholderName, cardNo, exDate, cvcNo);

        boolean result;
        String message = "";
        try {
            result = service.makePayment(payment);
            if (result) {
                message = "Payment has been successfully added!";
            } else {
                message = "Failed to add the payment!";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("PatientDashboard.jsp");
        rd.forward(request, response);
    }
    private void getPaymentDetails(HttpServletRequest request, HttpServletResponse response, PaymentService service) throws ServletException, IOException {
        int paymentId = Integer.parseInt(request.getParameter("paymentId"));
        Payment payment;
        String message = "";

        try {
            payment = service.getSpecificPayment(paymentId);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
            payment = new Payment();
        }

        request.setAttribute("payment", payment);
        request.setAttribute("message", message);

        RequestDispatcher rd = request.getRequestDispatcher("receipt.jsp");
        rd.forward(request, response);
    }

    private void cancelPayment(HttpServletRequest request, HttpServletResponse response, PaymentService service) throws ServletException, IOException {
        int paymentId = Integer.parseInt(request.getParameter("paymentId"));

        boolean result;
        String message = "";
        try {
            result = service.cancelPayment(paymentId);
            if (result) {
                message = "Payment with ID " + paymentId + " has been successfully canceled!";
            } else {
                message = "Failed to cancel the payment with ID: " + paymentId;
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        HttpSession session = request.getSession();

        try {
            List<Payment> paymentList = service.getAllPayments();
            session.setAttribute("paymentList", paymentList);
        } catch (ClassNotFoundException | SQLException e) {
            message = e.getMessage();
        }

        session.setAttribute("message", message);
        response.sendRedirect("Payment.jsp");
    }
}
