package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PaymentTest {

    @Test
    void testPaymentIntIntDoubleStringStringIntStringInt() {
        Payment payment = new Payment(1, 2, 100.0, "2024-03-25", "John Doe", 123456789, "2026-12", 123);
        assertEquals(1, payment.getIdPayment());
        assertEquals(2, payment.getPatientID());
        assertEquals(100.0, payment.getAmount());
        assertEquals("2024-03-25", payment.getPaymentDate());
        assertEquals("John Doe", payment.getCardholderName());
        assertEquals(123456789, payment.getCardNo());
        assertEquals("2026-12", payment.getExDate());
        assertEquals(123, payment.getCvcNo());
    }

    @Test
    void testPaymentIntDoubleStringStringIntStringInt() {
        Payment payment = new Payment(2, 200.0, "2024-03-26", "Jane Doe", 987654321, "2027-12", 456);
        assertEquals(2, payment.getPatientID()); // ID defaults to 0
        assertEquals(200.0, payment.getAmount());
        assertEquals("2024-03-26", payment.getPaymentDate());
        assertEquals("Jane Doe", payment.getCardholderName());
        assertEquals(987654321, payment.getCardNo());
        assertEquals("2027-12", payment.getExDate());
        assertEquals(456, payment.getCvcNo());
    }

    @Test
    void testPayment() {
        Payment payment = new Payment();
        assertEquals(0, payment.getIdPayment()); // ID defaults to 0
        assertEquals(0, payment.getPatientID()); // Patient ID defaults to 0
        assertEquals(0.0, payment.getAmount()); // Amount defaults to 0.0
        assertNull(payment.getPaymentDate()); // Payment date defaults to null
        assertNull(payment.getCardholderName()); // Cardholder name defaults to null
        assertEquals(0, payment.getCardNo()); // Card number defaults to 0
        assertNull(payment.getExDate()); // Expiry date defaults to null
        assertEquals(0, payment.getCvcNo()); // CVC number defaults to 0
    }

    @Test
    void testGetIdPayment() {
        Payment payment = new Payment();
        payment.setIdPayment(3);
        assertEquals(3, payment.getIdPayment());
    }

    @Test
    void testSetIdPayment() {
        Payment payment = new Payment();
        payment.setIdPayment(4);
        assertEquals(4, payment.getIdPayment());
    }

    @Test
    void testGetPatientID() {
        Payment payment = new Payment();
        payment.setPatientID(5);
        assertEquals(5, payment.getPatientID());
    }

    @Test
    void testSetPatientID() {
        Payment payment = new Payment();
        payment.setPatientID(6);
        assertEquals(6, payment.getPatientID());
    }

    @Test
    void testGetAmount() {
        Payment payment = new Payment();
        payment.setAmount(100.0);
        assertEquals(100.0, payment.getAmount());
    }

    @Test
    void testSetAmount() {
        Payment payment = new Payment();
        payment.setAmount(200.0);
        assertEquals(200.0, payment.getAmount());
    }

    @Test
    void testGetPaymentDate() {
        Payment payment = new Payment();
        payment.setPaymentDate("2024-03-27");
        assertEquals("2024-03-27", payment.getPaymentDate());
    }

    @Test
    void testSetPaymentDate() {
        Payment payment = new Payment();
        payment.setPaymentDate("2024-03-28");
        assertEquals("2024-03-28", payment.getPaymentDate());
    }

    @Test
    void testGetCardholderName() {
        Payment payment = new Payment();
        payment.setCardholderName("Alice");
        assertEquals("Alice", payment.getCardholderName());
    }

    @Test
    void testSetCardholderName() {
        Payment payment = new Payment();
        payment.setCardholderName("Bob");
        assertEquals("Bob", payment.getCardholderName());
    }

    @Test
    void testGetCardNo() {
        Payment payment = new Payment();
        payment.setCardNo(789);
        assertEquals(789, payment.getCardNo());
    }

    @Test
    void testSetCardNo() {
        Payment payment = new Payment();
        payment.setCardNo(987);
        assertEquals(987, payment.getCardNo());
    }

    @Test
    void testGetExDate() {
        Payment payment = new Payment();
        payment.setExDate("2028-12");
        assertEquals("2028-12", payment.getExDate());
    }

    @Test
    void testSetExDate() {
        Payment payment = new Payment();
        payment.setExDate("2029-12");
        assertEquals("2029-12", payment.getExDate());
    }

    @Test
    void testGetCvcNo() {
        Payment payment = new Payment();
        payment.setCvcNo(456);
        assertEquals(456, payment.getCvcNo());
    }

    @Test
    void testSetCvcNo() {
        Payment payment = new Payment();
        payment.setCvcNo(789);
        assertEquals(789, payment.getCvcNo());
    }
}
