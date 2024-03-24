package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TechnicianTest {

    @Test
    void testTechnicianIntStringString() {
        Technician technician = new Technician(1, "John Doe", "Lab Technician");
        assertEquals(1, technician.getIdTechnicians());
        assertEquals("John Doe", technician.getName());
        assertEquals("Lab Technician", technician.getSpecialization());
    }

    @Test
    void testTechnicianStringString() {
        Technician technician = new Technician("Jane Doe", "Lab Assistant");
        assertEquals(0, technician.getIdTechnicians()); // ID defaults to 0
        assertEquals("Jane Doe", technician.getName());
        assertEquals("Lab Assistant", technician.getSpecialization());
    }

    @Test
    void testTechnician() {
        Technician technician = new Technician();
        assertEquals(0, technician.getIdTechnicians()); // ID defaults to 0
        assertNull(technician.getName()); // Name defaults to null
        assertNull(technician.getSpecialization()); // Specialization defaults to null
    }

    @Test
    void testGetIdTechnicians() {
        Technician technician = new Technician();
        technician.setIdTechnicians(2);
        assertEquals(2, technician.getIdTechnicians());
    }

    @Test
    void testSetIdTechnicians() {
        Technician technician = new Technician();
        technician.setIdTechnicians(3);
        assertEquals(3, technician.getIdTechnicians());
    }

    @Test
    void testGetName() {
        Technician technician = new Technician();
        technician.setName("Alice");
        assertEquals("Alice", technician.getName());
    }

    @Test
    void testSetName() {
        Technician technician = new Technician();
        technician.setName("Bob");
        assertEquals("Bob", technician.getName());
    }

    @Test
    void testGetSpecialization() {
        Technician technician = new Technician();
        technician.setSpecialization("Chemistry");
        assertEquals("Chemistry", technician.getSpecialization());
    }

    @Test
    void testSetSpecialization() {
        Technician technician = new Technician();
        technician.setSpecialization("Biology");
        assertEquals("Biology", technician.getSpecialization());
    }
}
