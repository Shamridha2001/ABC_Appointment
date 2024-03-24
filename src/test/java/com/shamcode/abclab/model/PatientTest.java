package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PatientTest {

    @Test
    void testPatientIntStringStringStringStringStringStringStringStringString() {
        Patient patient = new Patient(1, "John Doe", "2000-01-01", "Male", "123456789", "john@example.com", "123 Main St", "None", "john_doe", "password");
        assertEquals(1, patient.getPatientId());
        assertEquals("John Doe", patient.getName());
        assertEquals("2000-01-01", patient.getDateOfBirth());
        assertEquals("Male", patient.getGender());
        assertEquals("123456789", patient.getContactNumber());
        assertEquals("john@example.com", patient.getEmail());
        assertEquals("123 Main St", patient.getAddress());
        assertEquals("None", patient.getMedicalProblems());
        assertEquals("john_doe", patient.getUsername());
        assertEquals("password", patient.getPassword());
    }

    @Test
    void testPatientStringStringStringStringStringStringStringStringStringString() {
        Patient patient = new Patient("Jane Doe", "1995-05-05", "Female", "987654321", "jane@example.com", "456 Elm St", "Allergies", "jane_doe", "password123");
        assertEquals(0, patient.getPatientId()); // ID defaults to 0
        assertEquals("Jane Doe", patient.getName());
        assertEquals("1995-05-05", patient.getDateOfBirth());
        assertEquals("Female", patient.getGender());
        assertEquals("987654321", patient.getContactNumber());
        assertEquals("jane@example.com", patient.getEmail());
        assertEquals("456 Elm St", patient.getAddress());
        assertEquals("Allergies", patient.getMedicalProblems());
        assertEquals("jane_doe", patient.getUsername());
        assertEquals("password123", patient.getPassword());
    }

    @Test
    void testPatient() {
        Patient patient = new Patient();
        assertEquals(0, patient.getPatientId()); // ID defaults to 0
        assertNull(patient.getName());
        assertNull(patient.getDateOfBirth());
        assertNull(patient.getGender());
        assertNull(patient.getContactNumber());
        assertNull(patient.getEmail());
        assertNull(patient.getAddress());
        assertNull(patient.getMedicalProblems());
        assertNull(patient.getUsername());
        assertNull(patient.getPassword());
    }

    @Test
    void testGetPatientId() {
        Patient patient = new Patient();
        patient.setPatientId(5);
        assertEquals(5, patient.getPatientId());
    }

    @Test
    void testSetPatientId() {
        Patient patient = new Patient();
        patient.setPatientId(10);
        assertEquals(10, patient.getPatientId());
    }

    @Test
    void testGetName() {
        Patient patient = new Patient();
        patient.setName("Alice");
        assertEquals("Alice", patient.getName());
    }

    @Test
    void testSetName() {
        Patient patient = new Patient();
        patient.setName("Bob");
        assertEquals("Bob", patient.getName());
    }

    @Test
    void testGetDateOfBirth() {
        Patient patient = new Patient();
        patient.setDateOfBirth("1990-10-10");
        assertEquals("1990-10-10", patient.getDateOfBirth());
    }

    @Test
    void testSetDateOfBirth() {
        Patient patient = new Patient();
        patient.setDateOfBirth("1985-03-15");
        assertEquals("1985-03-15", patient.getDateOfBirth());
    }

    @Test
    void testGetGender() {
        Patient patient = new Patient();
        patient.setGender("Male");
        assertEquals("Male", patient.getGender());
    }

    @Test
    void testSetGender() {
        Patient patient = new Patient();
        patient.setGender("Female");
        assertEquals("Female", patient.getGender());
    }

    @Test
    void testGetContactNumber() {
        Patient patient = new Patient();
        patient.setContactNumber("123456789");
        assertEquals("123456789", patient.getContactNumber());
    }

    @Test
    void testSetContactNumber() {
        Patient patient = new Patient();
        patient.setContactNumber("987654321");
        assertEquals("987654321", patient.getContactNumber());
    }

    @Test
    void testGetEmail() {
        Patient patient = new Patient();
        patient.setEmail("test@example.com");
        assertEquals("test@example.com", patient.getEmail());
    }

    @Test
    void testSetEmail() {
        Patient patient = new Patient();
        patient.setEmail("example@example.com");
        assertEquals("example@example.com", patient.getEmail());
    }

    @Test
    void testGetAddress() {
        Patient patient = new Patient();
        patient.setAddress("789 Oak St");
        assertEquals("789 Oak St", patient.getAddress());
    }

    @Test
    void testSetAddress() {
        Patient patient = new Patient();
        patient.setAddress("456 Elm St");
        assertEquals("456 Elm St", patient.getAddress());
    }

    @Test
    void testGetMedicalProblems() {
        Patient patient = new Patient();
        patient.setMedicalProblems("High Blood Pressure");
        assertEquals("High Blood Pressure", patient.getMedicalProblems());
    }

    @Test
    void testSetMedicalProblems() {
        Patient patient = new Patient();
        patient.setMedicalProblems("Diabetes");
        assertEquals("Diabetes", patient.getMedicalProblems());
    }

    @Test
    void testGetUsername() {
        Patient patient = new Patient();
        patient.setUsername("user123");
        assertEquals("user123", patient.getUsername());
    }

    @Test
    void testSetUsername() {
        Patient patient = new Patient();
        patient.setUsername("john_doe");
        assertEquals("john_doe", patient.getUsername());
    }

    @Test
    void testGetPassword() {
        Patient patient = new Patient();
        patient.setPassword("pass123");
        assertEquals("pass123", patient.getPassword());
    }

    @Test
    void testSetPassword() {
        Patient patient = new Patient();
        patient.setPassword("password");
        assertEquals("password", patient.getPassword());
    }
}
