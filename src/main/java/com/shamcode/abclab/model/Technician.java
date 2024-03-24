package com.shamcode.abclab.model;

public class Technician {
    private int idTechnicians;
    private String name;
    private String specialization;

    public Technician(int idTechnicians, String name, String specialization) {
        this.idTechnicians = idTechnicians;
        this.name = name;
        this.specialization = specialization;
    }

    public Technician(String name, String specialization) {
        this.name = name;
        this.specialization = specialization;
    }

    public Technician() {

    }

    public int getIdTechnicians() {
        return idTechnicians;
    }

    public void setIdTechnicians(int idTechnicians) {
        this.idTechnicians = idTechnicians;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }
}
