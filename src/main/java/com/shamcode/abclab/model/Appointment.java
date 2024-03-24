package com.shamcode.abclab.model;

import java.sql.Date;

public class Appointment {
    private int appointmentID;
    private String userName;
    private Date appointmentDate;
    private String testName;
    private String appointmentRequest;

    public Appointment(int appointmentID, String userName, Date appointmentDate, String testName, String appointmentRequest) {
        this.appointmentID = appointmentID;
        this.userName = userName;
        this.appointmentDate = appointmentDate;
        this.testName = testName;
        this.appointmentRequest = appointmentRequest;
    }

    public Appointment(String userName, Date appointmentDate, String testName, String appointmentRequest) {
        this.userName = userName;
        this.appointmentDate = appointmentDate;
        this.testName = testName;
        this.appointmentRequest = appointmentRequest;
    }

    public Appointment() {
    }

    public int getAppointmentID() {
        return appointmentID;
    }

    public void setAppointmentID(int appointmentID) {
        this.appointmentID = appointmentID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(Date appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getAppointmentRequest() {
        return appointmentRequest;
    }

    public void setAppointmentRequest(String appointmentRequest) {
        this.appointmentRequest = appointmentRequest;
    }
}
