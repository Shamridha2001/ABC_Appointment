package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class DoctorTest {

    @Test
    void testDoctorIntStringStringStringStringStringString() {
        Doctor doctor = new Doctor(1, "John", "Doe", "123456789", "123 Main St", "john@example.com", "Cardiology");
        assertEquals(1, doctor.getDoctorID());
        assertEquals("John", doctor.getFirstName());
        assertEquals("Doe", doctor.getLastName());
        assertEquals("123456789", doctor.getPhoneNumber());
        assertEquals("123 Main St", doctor.getAddress());
        assertEquals("john@example.com", doctor.getEmail());
        assertEquals("Cardiology", doctor.getSpecialistType());
    }

    @Test
    void testDoctor() {
        Doctor doctor = new Doctor();
        assertEquals(0, doctor.getDoctorID()); // ID defaults to 0
        assertNull(doctor.getFirstName());
        assertNull(doctor.getLastName());
        assertNull(doctor.getPhoneNumber());
        assertNull(doctor.getAddress());
        assertNull(doctor.getEmail());
        assertNull(doctor.getSpecialistType());
    }

    @Test
    void testGetDoctorID() {
        Doctor doctor = new Doctor();
        doctor.setDoctorID(5);
        assertEquals(5, doctor.getDoctorID());
    }

    @Test
    void testSetDoctorID() {
        Doctor doctor = new Doctor();
        doctor.setDoctorID(10);
        assertEquals(10, doctor.getDoctorID());
    }

    @Test
    void testGetFirstName() {
        Doctor doctor = new Doctor();
        doctor.setFirstName("Alice");
        assertEquals("Alice", doctor.getFirstName());
    }

    @Test
    void testSetFirstName() {
        Doctor doctor = new Doctor();
        doctor.setFirstName("Bob");
        assertEquals("Bob", doctor.getFirstName());
    }

    @Test
    void testGetLastName() {
        Doctor doctor = new Doctor();
        doctor.setLastName("Smith");
        assertEquals("Smith", doctor.getLastName());
    }

    @Test
    void testSetLastName() {
        Doctor doctor = new Doctor();
        doctor.setLastName("Johnson");
        assertEquals("Johnson", doctor.getLastName());
    }

    @Test
    void testGetPhoneNumber() {
        Doctor doctor = new Doctor();
        doctor.setPhoneNumber("987654321");
        assertEquals("987654321", doctor.getPhoneNumber());
    }

    @Test
    void testSetPhoneNumber() {
        Doctor doctor = new Doctor();
        doctor.setPhoneNumber("123456789");
        assertEquals("123456789", doctor.getPhoneNumber());
    }

    @Test
    void testGetAddress() {
        Doctor doctor = new Doctor();
        doctor.setAddress("456 Elm St");
        assertEquals("456 Elm St", doctor.getAddress());
    }

    @Test
    void testSetAddress() {
        Doctor doctor = new Doctor();
        doctor.setAddress("789 Oak St");
        assertEquals("789 Oak St", doctor.getAddress());
    }

    @Test
    void testGetEmail() {
        Doctor doctor = new Doctor();
        doctor.setEmail("bob@example.com");
        assertEquals("bob@example.com", doctor.getEmail());
    }

    @Test
    void testSetEmail() {
        Doctor doctor = new Doctor();
        doctor.setEmail("alice@example.com");
        assertEquals("alice@example.com", doctor.getEmail());
    }

    @Test
    void testGetSpecialistType() {
        Doctor doctor = new Doctor();
        doctor.setSpecialistType("Orthopedics");
        assertEquals("Orthopedics", doctor.getSpecialistType());
    }

    @Test
    void testSetSpecialistType() {
        Doctor doctor = new Doctor();
        doctor.setSpecialistType("Neurology");
        assertEquals("Neurology", doctor.getSpecialistType());
    }
}
