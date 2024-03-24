package com.shamcode.abclab.service;

import com.shamcode.abclab.dao.TechnicianManager;
import com.shamcode.abclab.model.Technician;

import java.sql.SQLException;
import java.util.List;

public class TechnicianService {

    private static TechnicianService technicianServiceObj;

    private TechnicianService() {

    }

    public static synchronized TechnicianService getTechnicianServiceInstance() {
        if (technicianServiceObj == null) {
            technicianServiceObj = new TechnicianService();
        }
        return technicianServiceObj;
    }

    private TechnicianManager getTechnicianManager() {
        return new TechnicianManager();
    }

    public boolean registerTechnician(Technician technician) throws ClassNotFoundException, SQLException {
        return getTechnicianManager().addTechnician(technician);
    }

    public Technician getSpecificTechnician(int technicianId) throws ClassNotFoundException, SQLException {
        return getTechnicianManager().getSpecificTechnician(technicianId);
    }

    public List<Technician> getAllTechnicians() throws ClassNotFoundException, SQLException {
        return getTechnicianManager().getAllTechnicians();
    }

    public boolean editTheTechnician(Technician technician) throws ClassNotFoundException, SQLException {
        return getTechnicianManager().updateTechnician(technician);
    }

    public boolean deleteTheTechnician(int technicianId) throws ClassNotFoundException, SQLException {
        return getTechnicianManager().deleteTechnician(technicianId);
    }
}
