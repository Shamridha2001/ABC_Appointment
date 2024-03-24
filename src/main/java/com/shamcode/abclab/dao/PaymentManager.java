package com.shamcode.abclab.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shamcode.abclab.model.Payment;

public class PaymentManager {

    public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl();
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addPayment(Payment payment) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "INSERT INTO payment (PatientID, Amount, PaymentDate, CardholderName, CardNo, ExDate, CVCno) VALUES (?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, payment.getPatientID());
        ps.setDouble(2, payment.getAmount());
        ps.setString(3, payment.getPaymentDate());
        ps.setString(4, payment.getCardholderName());
        ps.setInt(5, payment.getCardNo());
        ps.setString(6, payment.getExDate());
        ps.setInt(7, payment.getCvcNo());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public Payment getSpecificPayment(int paymentId) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        String query = "SELECT * FROM payment WHERE IdPayment = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, paymentId);

        ResultSet rs = ps.executeQuery();
        Payment payment = new Payment();

        while (rs.next()) {
            payment.setIdPayment(rs.getInt("IdPayment"));
            payment.setPatientID(rs.getInt("PatientID"));
            payment.setAmount(rs.getDouble("Amount"));
            payment.setPaymentDate(rs.getString("PaymentDate"));
            payment.setCardholderName(rs.getString("CardholderName"));
            payment.setCardNo(rs.getInt("CardNo"));
            payment.setExDate(rs.getString("ExDate"));
            payment.setCvcNo(rs.getInt("CVCno"));
        }

        ps.close();
        connection.close();
        return payment;
    }

    public List<Payment> getAllPayments() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        List<Payment> paymentList = new ArrayList<>();

        String query = "SELECT * FROM payment";

        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {
            Payment payment = new Payment();
            payment.setIdPayment(rs.getInt("IdPayment"));
            payment.setPatientID(rs.getInt("PatientID"));
            payment.setAmount(rs.getDouble("Amount"));
            payment.setPaymentDate(rs.getString("PaymentDate"));
            payment.setCardholderName(rs.getString("CardholderName"));
            payment.setCardNo(rs.getInt("CardNo"));
            payment.setExDate(rs.getString("ExDate"));
            payment.setCvcNo(rs.getInt("CVCno"));

            paymentList.add(payment);
        }

        st.close();
        connection.close();
        return paymentList;
    }

    public boolean updatePayment(Payment payment) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE payment SET PatientID = ?, Amount = ?, PaymentDate = ?, CardholderName = ?, CardNo = ?, ExDate = ?, CVCno = ? WHERE IdPayment = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, payment.getPatientID());
        ps.setDouble(2, payment.getAmount());
        ps.setString(3, payment.getPaymentDate());
        ps.setString(4, payment.getCardholderName());
        ps.setInt(5, payment.getCardNo());
        ps.setString(6, payment.getExDate());
        ps.setInt(7, payment.getCvcNo());
        ps.setInt(8, payment.getIdPayment());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public boolean deletePayment(int paymentId) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "DELETE FROM payment WHERE IdPayment = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, paymentId);
        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }
}
