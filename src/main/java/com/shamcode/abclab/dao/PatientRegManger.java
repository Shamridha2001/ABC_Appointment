package com.shamcode.abclab.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Statement;
import java.util.List;

import com.shamcode.abclab.model.Patient;

public class PatientRegManger {
	
	public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl(); 
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addPatient(Patient patient) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection(); 
        String query = "INSERT INTO patient (Name, DateOfBirth, Gender, ContactNumber, Email, Address, MedicalProblems, Username, Password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, patient.getName());
        ps.setString(2, patient.getDateOfBirth());
        ps.setString(3, patient.getGender());
        ps.setString(4, patient.getContactNumber());
        ps.setString(5, patient.getEmail());
        ps.setString(6, patient.getAddress());
        ps.setString(7, patient.getMedicalProblems());
        ps.setString(8, patient.getUsername());
        ps.setString(9, patient.getPassword());
        int result = ps.executeUpdate();
        ps.close();
        connection.close();        
        return result > 0;
    }
}