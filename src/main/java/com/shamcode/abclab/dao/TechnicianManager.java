package com.shamcode.abclab.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shamcode.abclab.model.Technician;

public class TechnicianManager {

    public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl();
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addTechnician(Technician technician) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "INSERT INTO technician (Name, Specialization) VALUES (?, ?)";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, technician.getName());
        ps.setString(2, technician.getSpecialization());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public Technician getSpecificTechnician(int technicianId) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        String query = "SELECT * FROM technician WHERE idTechnicians = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, technicianId);

        ResultSet rs = ps.executeQuery();
        Technician technician = new Technician();

        while (rs.next()) {
            technician.setIdTechnicians(rs.getInt("idTechnicians"));
            technician.setName(rs.getString("Name"));
            technician.setSpecialization(rs.getString("Specialization"));
        }

        ps.close();
        connection.close();
        return technician;
    }

    public List<Technician> getAllTechnicians() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        List<Technician> technicianList = new ArrayList<>();

        String query = "SELECT * FROM technician";

        Statement st = connection.createStatement();

        ResultSet rs = st.executeQuery(query);

        while (rs.next()) {
            Technician technician = new Technician();
            technician.setIdTechnicians(rs.getInt("idTechnicians"));
            technician.setName(rs.getString("Name"));
            technician.setSpecialization(rs.getString("Specialization"));

            technicianList.add(technician);
        }

        st.close();
        connection.close();

        return technicianList;
    }

    public boolean updateTechnician(Technician technician) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE technician SET Name = ?, Specialization = ? WHERE idTechnicians = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, technician.getName());
        ps.setString(2, technician.getSpecialization());
        ps.setInt(3, technician.getIdTechnicians());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public boolean deleteTechnician(int technicianId) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "DELETE FROM technician WHERE idTechnicians = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, technicianId);
        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }
}
