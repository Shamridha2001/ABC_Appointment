package com.shamcode.abclab.model;

public class TestResult {
    private int resultID;
    private int appointmentID;
    private String result;
    private byte[] report;
    private String doctorName;
    private String technicianName;

    public TestResult(int resultID, int appointmentID, String result, byte[] report, String doctorName, String technicianName) {
        this.resultID = resultID;
        this.appointmentID = appointmentID;
        this.result = result;
        this.report = report;
        this.doctorName = doctorName;
        this.technicianName = technicianName;
    }

    public TestResult(int appointmentID, String result, byte[] report, String doctorName, String technicianName) {
        this.appointmentID = appointmentID;
        this.result = result;
        this.report = report;
        this.doctorName = doctorName;
        this.technicianName = technicianName;
    }

    public TestResult() {
        // Default constructor
    }

    public int getResultID() {
        return resultID;
    }

    public void setResultID(int resultID) {
        this.resultID = resultID;
    }

    public int getAppointmentID() {
        return appointmentID;
    }

    public void setAppointmentID(int appointmentID) {
        this.appointmentID = appointmentID;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public byte[] getReport() {
        return report;
    }

    public void setReport(byte[] report) {
        this.report = report;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getTechnicianName() {
        return technicianName;
    }

    public void setTechnicianName(String technicianName) {
        this.technicianName = technicianName;
    }
}
