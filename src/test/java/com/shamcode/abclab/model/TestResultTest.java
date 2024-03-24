package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TestResultTest {

    @Test
    void testTestResultIntIntStringByteArrayStringString() {
        byte[] report = {0x01, 0x02, 0x03}; // Example report data
        TestResult testResult = new TestResult(1, 2, "Positive", report, "Dr. Smith", "John Doe");
        assertEquals(1, testResult.getResultID());
        assertEquals(2, testResult.getAppointmentID());
        assertEquals("Positive", testResult.getResult());
        assertArrayEquals(report, testResult.getReport());
        assertEquals("Dr. Smith", testResult.getDoctorName());
        assertEquals("John Doe", testResult.getTechnicianName());
    }

    @Test
    void testTestResultIntStringByteArrayStringString() {
        byte[] report = {0x04, 0x05}; // Example report data
        TestResult testResult = new TestResult(3, "Negative", report, "Dr. Johnson", "Jane Doe");
        assertEquals(3, testResult.getAppointmentID());
        assertEquals("Negative", testResult.getResult());
        assertArrayEquals(report, testResult.getReport());
        assertEquals("Dr. Johnson", testResult.getDoctorName());
        assertEquals("Jane Doe", testResult.getTechnicianName());
    }

    @Test
    void testTestResult() {
        TestResult testResult = new TestResult();
        assertEquals(0, testResult.getResultID()); // ResultID defaults to 0
        assertEquals(0, testResult.getAppointmentID()); // AppointmentID defaults to 0
        assertNull(testResult.getResult()); // Result defaults to null
        assertNull(testResult.getReport()); // Report defaults to null
        assertNull(testResult.getDoctorName()); // DoctorName defaults to null
        assertNull(testResult.getTechnicianName()); // TechnicianName defaults to null
    }

    @Test
    void testGetResultID() {
        TestResult testResult = new TestResult();
        testResult.setResultID(5);
        assertEquals(5, testResult.getResultID());
    }

    @Test
    void testSetResultID() {
        TestResult testResult = new TestResult();
        testResult.setResultID(6);
        assertEquals(6, testResult.getResultID());
    }

    @Test
    void testGetAppointmentID() {
        TestResult testResult = new TestResult();
        testResult.setAppointmentID(7);
        assertEquals(7, testResult.getAppointmentID());
    }

    @Test
    void testSetAppointmentID() {
        TestResult testResult = new TestResult();
        testResult.setAppointmentID(8);
        assertEquals(8, testResult.getAppointmentID());
    }

    @Test
    void testGetResult() {
        TestResult testResult = new TestResult();
        testResult.setResult("Positive");
        assertEquals("Positive", testResult.getResult());
    }

    @Test
    void testSetResult() {
        TestResult testResult = new TestResult();
        testResult.setResult("Negative");
        assertEquals("Negative", testResult.getResult());
    }

    @Test
    void testGetReport() {
        byte[] report = {0x06, 0x07, 0x08}; // Example report data
        TestResult testResult = new TestResult();
        testResult.setReport(report);
        assertArrayEquals(report, testResult.getReport());
    }

    @Test
    void testSetReport() {
        byte[] report = {0x09, 0x0A}; // Example report data
        TestResult testResult = new TestResult();
        testResult.setReport(report);
        assertArrayEquals(report, testResult.getReport());
    }

    @Test
    void testGetDoctorName() {
        TestResult testResult = new TestResult();
        testResult.setDoctorName("Dr. Brown");
        assertEquals("Dr. Brown", testResult.getDoctorName());
    }

    @Test
    void testSetDoctorName() {
        TestResult testResult = new TestResult();
        testResult.setDoctorName("Dr. White");
        assertEquals("Dr. White", testResult.getDoctorName());
    }

    @Test
    void testGetTechnicianName() {
        TestResult testResult = new TestResult();
        testResult.setTechnicianName("Jane Smith");
        assertEquals("Jane Smith", testResult.getTechnicianName());
    }

    @Test
    void testSetTechnicianName() {
        TestResult testResult = new TestResult();
        testResult.setTechnicianName("John Smith");
        assertEquals("John Smith", testResult.getTechnicianName());
    }
}
