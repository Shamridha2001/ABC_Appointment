package com.shamcode.abclab.service;

import com.shamcode.abclab.dao.PatientAppointmentManager;
import com.shamcode.abclab.model.Appointment;

import java.sql.SQLException;
import java.util.List;

public class PatientAppointmentservice {

    private static PatientAppointmentservice appointmentServiceObj;

    private PatientAppointmentservice() {

    }

    public static synchronized PatientAppointmentservice getPatientAppointmentserviceInstance() {

        if (appointmentServiceObj == null) {
            appointmentServiceObj = new PatientAppointmentservice();
        }

        return appointmentServiceObj;
    }

    private PatientAppointmentManager getAppointmentManager() {
        return new PatientAppointmentManager();
    }

    public boolean scheduleAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().addAppointment(appointment);
    }

    public Appointment getSpecificAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().getSpecificAppointment(appointmentID);
    }

    public List<Appointment> getAllAppointments() throws ClassNotFoundException, SQLException {
        return getAppointmentManager().getAllAppointments();
    }

    public boolean updateAppointmentDetails(Appointment appointment) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().updateAppointment(appointment);
    }

    public boolean cancelAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().deleteAppointment(appointmentID);
    }
}
