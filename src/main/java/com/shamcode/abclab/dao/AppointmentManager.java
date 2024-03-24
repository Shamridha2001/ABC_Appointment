package com.shamcode.abclab.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shamcode.abclab.model.Appointment;

public class AppointmentManager {
    
   
    public DbConnector getDbConnector() {
        
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl(); // if you can get this from config 
        return factory.getDbConnector();
    }
    
    private Connection getConnection() throws ClassNotFoundException, SQLException {
        
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }
        
    public boolean addAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
                
        Connection connection = getConnection(); 
        String query = "INSERT INTO appointment (UserName, AppointmentDate, Testname,DoctorName, AppointmentReuest) VALUES (?, ?, ?, ?)";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, appointment.getUserName());
        ps.setString(2, appointment.getAppointmentDate());
        ps.setString(3, appointment.getTestName());
        ps.setString(4, appointment.getDoctorName());
        ps.setString(5, appointment.getAppointmentRequest());
        
        int result = ps.executeUpdate();
        
        ps.close();
        connection.close();        
        return result > 0;
    }
    
    public Appointment getSpecificAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
        
        Connection connection = getConnection();
        String query = "SELECT * FROM appointment WHERE AppointmentID = ?";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, appointmentID);
        
        ResultSet rs = ps.executeQuery();
        Appointment appointment = new Appointment();
        
        while(rs.next()) {
            appointment.setAppointmentID(rs.getInt("AppointmentID"));
            appointment.setUserName(rs.getString("UserName"));
            appointment.setAppointmentDate(rs.getString("AppointmentDate"));
            appointment.setTestName(rs.getString("Testname"));
            appointment.setDoctorName(rs.getString("DoctorName"));
            appointment.setAppointmentRequest(rs.getString("AppointmentReuest"));
        }
        
        ps.close();
        connection.close();        
        return appointment;
    }
    
    public List<Appointment> getAllAppointments() throws ClassNotFoundException, SQLException {
        
        Connection connection = getConnection();    
        List<Appointment> appointmentList = new ArrayList<>();
        
        String query = "SELECT * FROM appointment";
        
        Statement st = connection.createStatement();
        
        ResultSet rs = st.executeQuery(query);
        
        while(rs.next()) {
            
            Appointment appointment = new Appointment();
            appointment.setAppointmentID(rs.getInt("AppointmentID"));
            appointment.setUserName(rs.getString("UserName"));
            appointment.setAppointmentDate(rs.getString("AppointmentDate"));
            appointment.setTestName(rs.getString("Testname"));
            appointment.setDoctorName(rs.getString("DoctorName"));
            appointment.setAppointmentRequest(rs.getString("AppointmentReuest"));
            
            appointmentList.add(appointment);
        }
        
        st.close();
        connection.close();
        
        return appointmentList;        
    }
    
    public boolean updateAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
        
        Connection connection = getConnection();
        String query = "UPDATE appointment SET UserName = ?, AppointmentDate = ?, Testname = ?, DoctorName = ?, AppointmentReuest = ? WHERE AppointmentID = ?";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, appointment.getUserName());
        ps.setString(2, appointment.getAppointmentDate());
        ps.setString(3, appointment.getTestName());
        ps.setString(4, appointment.getDoctorName());
        ps.setString(5, appointment.getAppointmentRequest());
        ps.setInt(6, appointment.getAppointmentID());
        
        int result = ps.executeUpdate();
        
        ps.close();
        connection.close();
        return result > 0;
    }
    
    public boolean deleteAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
        
        Connection connection = getConnection();        
        String query = "DELETE FROM appointment WHERE AppointmentID = ?";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, appointmentID);
        int result = ps.executeUpdate();
        
        ps.close();
        connection.close();        
        return result > 0;
    }
}