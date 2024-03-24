package com.shamcode.abclab.model;


public class Patient {
    private int patientId;
    private String name;
    private String dateOfBirth;
    private String gender;
    private String contactNumber;
    private String email;
    private String address;
    private String medicalProblems;
    private String username;
    private String password;

    public Patient(int patientId, String name, String dateOfBirth, String gender, String contactNumber, String email, String address, String medicalProblems, String username, String password) {
        this.patientId = patientId;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.contactNumber = contactNumber;
        this.email = email;
        this.address = address;
        this.medicalProblems = medicalProblems;
        this.username = username;
        this.password = password;
    }

    public Patient(String name, String dateOfBirth, String gender, String contactNumber, String email, String address, String medicalProblems, String username, String password) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.contactNumber = contactNumber;
        this.email = email;
        this.address = address;
        this.medicalProblems = medicalProblems;
        this.username = username;
        this.password = password;
    }

    public Patient() {

    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMedicalProblems() {
        return medicalProblems;
    }

    public void setMedicalProblems(String medicalProblems) {
        this.medicalProblems = medicalProblems;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}


