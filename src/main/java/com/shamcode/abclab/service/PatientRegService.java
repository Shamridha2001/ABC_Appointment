package com.shamcode.abclab.service;


import java.sql.SQLException;
import java.util.List;

import com.shamcode.abclab.dao.PatientRegManger;
import com.shamcode.abclab.model.Patient;

public class PatientRegService {
	private static PatientRegService patientregServiceObj;

    private PatientRegService() {

    }

    public static synchronized PatientRegService getPatientregServiceInstance() {
        if(patientregServiceObj == null) {
            patientregServiceObj = new PatientRegService();
        }
        return patientregServiceObj;
    }

    private PatientRegManger getPatientRegManger() {
        return new PatientRegManger();
    }

    public boolean registerPatient(Patient patient) throws ClassNotFoundException, SQLException {
        return getPatientRegManger().addPatient(patient);
    }
}