package com.shamcode.abclab.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shamcode.abclab.model.TestResult;

public class TestResultManager {

    public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl();
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addTestResult(TestResult testResult) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "INSERT INTO result (AppointmentID, Result, Report, DoctorName, TechnicianName) VALUES (?, ?, ?, ?, ?)";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, testResult.getAppointmentID());
        ps.setString(2, testResult.getResult());
        ps.setBytes(3, testResult.getReport());
        ps.setString(4, testResult.getDoctorName());
        ps.setString(5, testResult.getTechnicianName());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public TestResult getSpecificTestResult(int resultID) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        String query = "SELECT * FROM result WHERE ResultID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, resultID);

        ResultSet rs = ps.executeQuery();
        TestResult testResult = new TestResult();

        while (rs.next()) {
            testResult.setResultID(rs.getInt("ResultID"));
            testResult.setAppointmentID(rs.getInt("AppointmentID"));
            testResult.setResult(rs.getString("Result"));
            testResult.setReport(rs.getBytes("Report"));
            testResult.setDoctorName(rs.getString("DoctorName"));
            testResult.setTechnicianName(rs.getString("TechnicianName"));
        }

        ps.close();
        connection.close();
        return testResult;
    }

    public List<TestResult> getAllTestResults() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        List<TestResult> testResultList = new ArrayList<>();

        String query = "SELECT * FROM result";

        Statement st = connection.createStatement();

        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {
            TestResult testResult = new TestResult();
            testResult.setResultID(rs.getInt("ResultID"));
            testResult.setAppointmentID(rs.getInt("AppointmentID"));
            testResult.setResult(rs.getString("Result"));
            testResult.setReport(rs.getBytes("Report"));
            testResult.setDoctorName(rs.getString("DoctorName"));
            testResult.setTechnicianName(rs.getString("TechnicianName"));

            testResultList.add(testResult);
        }

        st.close();
        connection.close();

        return testResultList;
    }

    public boolean updateTestResult(TestResult testResult) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE result SET AppointmentID = ?, Result = ?, Report = ?, DoctorName = ?, TechnicianName = ? WHERE ResultID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, testResult.getAppointmentID());
        ps.setString(2, testResult.getResult());
        ps.setBytes(3, testResult.getReport());
        ps.setString(4, testResult.getDoctorName());
        ps.setString(5, testResult.getTechnicianName());
        ps.setInt(6, testResult.getResultID());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public boolean deleteTestResult(int resultID) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "DELETE FROM result WHERE ResultID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, resultID);
        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }
}
