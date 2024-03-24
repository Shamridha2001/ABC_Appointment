package com.shamcode.abclab.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shamcode.abclab.model.Doctor;

public class DoctorManager {

    public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl();
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addDoctor(Doctor doctor) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "INSERT INTO doctor (FirstName, LastName, Phoneno, Address, Email, SpecialistType) VALUES (?, ?, ?, ?, ?, ?)";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, doctor.getFirstName());
        ps.setString(2, doctor.getLastName());
        ps.setString(3, doctor.getPhoneNumber());
        ps.setString(4, doctor.getAddress());
        ps.setString(5, doctor.getEmail());
        ps.setString(6, doctor.getSpecialistType());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public Doctor getSpecificDoctor(int doctorID) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        String query = "SELECT * FROM doctor WHERE DoctorID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, doctorID);

        ResultSet rs = ps.executeQuery();
        Doctor doctor = null;

        if (rs.next()) {
            doctor = new Doctor(
                rs.getInt("DoctorID"),
                rs.getString("FirstName"),
                rs.getString("LastName"),
                rs.getString("Phoneno"),
                rs.getString("Address"),
                rs.getString("Email"),
                rs.getString("SpecialistType")
            );
        }

        rs.close();
        ps.close();
        connection.close();
        return doctor;
    }

    public List<Doctor> getAllDoctors() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        List<Doctor> doctorList = new ArrayList<>();

        String query = "SELECT * FROM doctor";

        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {
            Doctor doctor = new Doctor(
                rs.getInt("DoctorID"),
                rs.getString("FirstName"),
                rs.getString("LastName"),
                rs.getString("Phoneno"),
                rs.getString("Address"),
                rs.getString("Email"),
                rs.getString("SpecialistType")
            );
            doctorList.add(doctor);
        }

        rs.close();
        st.close();
        connection.close();

        return doctorList;
    }

    public boolean updateDoctor(Doctor doctor) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE doctor SET FirstName = ?, LastName = ?, Phoneno = ?, Address = ?, Email = ?, SpecialistType = ? WHERE DoctorID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, doctor.getFirstName());
        ps.setString(2, doctor.getLastName());
        ps.setString(3, doctor.getPhoneNumber());
        ps.setString(4, doctor.getAddress());
        ps.setString(5, doctor.getEmail());
        ps.setString(6, doctor.getSpecialistType());
        ps.setInt(7, doctor.getDoctorID());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public boolean deleteDoctor(int doctorID) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "DELETE FROM doctor WHERE DoctorID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, doctorID);

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }
}
