package com.shamcode.abclab.model;

public class Payment {
    private int idPayment;
    private int patientID;
    private double amount;
    private String paymentDate;
    private String cardholderName;
    private int cardNo;
    private String exDate;
    private int cvcNo;
    
    
    
    public Payment(int idPayment, int patientID, double amount, String paymentDate, String cardholderName, int cardNo, String exDate, int cvcNo) {
        this.idPayment = idPayment;
        this.patientID = patientID;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.cardholderName = cardholderName;
        this.cardNo = cardNo;
        this.exDate = exDate;
        this.cvcNo = cvcNo;
    }
    public Payment( int patientID, double amount, String paymentDate, String cardholderName, int cardNo, String exDate, int cvcNo) {
        
        this.patientID = patientID;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.cardholderName = cardholderName;
        this.cardNo = cardNo;
        this.exDate = exDate;
        this.cvcNo = cvcNo;
    }
    public Payment() {
        
    }

    public int getIdPayment() {
        return idPayment;
    }

    public void setIdPayment(int idPayment) {
        this.idPayment = idPayment;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getCardholderName() {
        return cardholderName;
    }

    public void setCardholderName(String cardholderName) {
        this.cardholderName = cardholderName;
    }

    public int getCardNo() {
        return cardNo;
    }

    public void setCardNo(int cardNo) {
        this.cardNo = cardNo;
    }

    public String getExDate() {
        return exDate;
    }

    public void setExDate(String exDate) {
        this.exDate = exDate;
    }

    public int getCvcNo() {
        return cvcNo;
    }

    public void setCvcNo(int cvcNo) {
        this.cvcNo = cvcNo;
    }
}
