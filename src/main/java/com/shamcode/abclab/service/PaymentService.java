package com.shamcode.abclab.service;

import com.shamcode.abclab.dao.PaymentManager;
import com.shamcode.abclab.model.Payment;

import java.sql.SQLException;
import java.util.List;

public class PaymentService {

    private static PaymentService paymentServiceObj;

    private PaymentService() {

    }

    public static synchronized PaymentService getPaymentServiceInstance() {

        if (paymentServiceObj == null) {
            paymentServiceObj = new PaymentService();
        }

        return paymentServiceObj;
    }

    private PaymentManager getPaymentManager() {
        return new PaymentManager();
    }

    public boolean makePayment(Payment payment) throws ClassNotFoundException, SQLException {
        return getPaymentManager().addPayment(payment);
    }

    public Payment getSpecificPayment(int paymentId) throws ClassNotFoundException, SQLException {
        return getPaymentManager().getSpecificPayment(paymentId);
    }

    public List<Payment> getAllPayments() throws ClassNotFoundException, SQLException {
        return getPaymentManager().getAllPayments();
    }

    public boolean updatePayment(Payment payment) throws ClassNotFoundException, SQLException {
        return getPaymentManager().updatePayment(payment);
    }

    public boolean cancelPayment(int paymentId) throws ClassNotFoundException, SQLException {
        return getPaymentManager().deletePayment(paymentId);
    }
   

}
