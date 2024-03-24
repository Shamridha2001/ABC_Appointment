package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;

import org.junit.jupiter.api.Test;

class AppointmentTest {

    @Test
    void testAppointmentIntStringDateStringString() {
        Appointment appointment = new Appointment(1, "John Doe", Date.valueOf("2024-03-25"), "Blood Test", "Urgent");
        assertEquals(1, appointment.getAppointmentID());
        assertEquals("Shamridha", appointment.getUserName());
        assertEquals(Date.valueOf("2024-03-25"), appointment.getAppointmentDate());
        assertEquals("Blood Test", appointment.getTestName());
        assertEquals("Urgent", appointment.getAppointmentRequest());
    }

    @Test
    void testAppointmentStringDateStringString() {
        Appointment appointment = new Appointment("Jane Doe", Date.valueOf("2024-03-26"), "X-ray", "Regular");
        assertEquals(0, appointment.getAppointmentID()); // Updated from assertNull
        assertEquals("Shamridha", appointment.getUserName());
        assertEquals(Date.valueOf("2024-03-26"), appointment.getAppointmentDate());
        assertEquals("X-ray", appointment.getTestName());
        assertEquals("Regular", appointment.getAppointmentRequest());
    }

    @Test
    void testAppointment() {
        Appointment appointment = new Appointment();
        assertEquals(0, appointment.getAppointmentID()); // Updated from assertNull
        assertNull(appointment.getUserName());
        assertNull(appointment.getAppointmentDate());
        assertNull(appointment.getTestName());
        assertNull(appointment.getAppointmentRequest());
    }

    @Test
    void testGetAppointmentID() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentID(5);
        assertEquals(5, appointment.getAppointmentID());
    }

    @Test
    void testSetAppointmentID() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentID(10);
        assertEquals(10, appointment.getAppointmentID());
    }

    @Test
    void testGetUserName() {
        Appointment appointment = new Appointment("John Smith", Date.valueOf("2024-03-27"), "Ultrasound", "Regular");
        assertEquals("John Smith", appointment.getUserName());
    }

    @Test
    void testSetUserName() {
        Appointment appointment = new Appointment();
        appointment.setUserName("Alice Johnson");
        assertEquals("Alice Johnson", appointment.getUserName());
    }

    @Test
    void testGetAppointmentDate() {
        Date appointmentDate = Date.valueOf("2024-03-28");
        Appointment appointment = new Appointment("Michael Brown", appointmentDate, "MRI", "Urgent");
        assertEquals(appointmentDate, appointment.getAppointmentDate());
    }

    @Test
    void testSetAppointmentDate() {
        Date appointmentDate = Date.valueOf("2024-03-29");
        Appointment appointment = new Appointment();
        appointment.setAppointmentDate(appointmentDate);
        assertEquals(appointmentDate, appointment.getAppointmentDate());
    }

    @Test
    void testGetTestName() {
        Appointment appointment = new Appointment(2, "Emma Watson", Date.valueOf("2024-03-30"), "CT Scan", "Urgent");
        assertEquals("CT Scan", appointment.getTestName());
    }

    @Test
    void testSetTestName() {
        Appointment appointment = new Appointment();
        appointment.setTestName("ECG");
        assertEquals("ECG", appointment.getTestName());
    }

    @Test
    void testGetAppointmentRequest() {
        Appointment appointment = new Appointment(3, "Robert Johnson", Date.valueOf("2024-03-31"), "Blood Test", "Regular");
        assertEquals("Regular", appointment.getAppointmentRequest());
    }

    @Test
    void testSetAppointmentRequest() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentRequest("Urgent");
        assertEquals("Urgent", appointment.getAppointmentRequest());
    }
}
