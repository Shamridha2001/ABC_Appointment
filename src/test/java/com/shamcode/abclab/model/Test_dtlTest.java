package com.shamcode.abclab.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class Test_dtlTest {

    @Test
    void testTest_dtlIntStringDouble() {
        Test_dtl test_dtl = new Test_dtl(1, "Blood Test", 50.0);
        assertEquals(1, test_dtl.gettestid());
        assertEquals("Blood Test", test_dtl.getName());
        assertEquals(50.0, test_dtl.getPrice());
    }

    @Test
    void testTest_dtlStringDouble() {
        Test_dtl test_dtl = new Test_dtl("Urine Test", 30.0);
        assertEquals(0, test_dtl.gettestid()); // ID defaults to 0
        assertEquals("Urine Test", test_dtl.getName());
        assertEquals(30.0, test_dtl.getPrice());
    }

    @Test
    void testTest_dtl() {
        Test_dtl test_dtl = new Test_dtl();
        assertEquals(0, test_dtl.gettestid()); // ID defaults to 0
        assertNull(test_dtl.getName()); // Name defaults to null
        assertEquals(0.0, test_dtl.getPrice()); // Price defaults to 0.0
    }

    @Test
    void testGettestid() {
        Test_dtl test_dtl = new Test_dtl();
        test_dtl.settestid(2);
        assertEquals(2, test_dtl.gettestid());
    }

    @Test
    void testSettestid() {
        Test_dtl test_dtl = new Test_dtl();
        test_dtl.settestid(3);
        assertEquals(3, test_dtl.gettestid());
    }

    @Test
    void testGetName() {
        Test_dtl test_dtl = new Test_dtl();
        test_dtl.setName("X-ray");
        assertEquals("X-ray", test_dtl.getName());
    }

    @Test
    void testSetName() {
        Test_dtl test_dtl = new Test_dtl();
        test_dtl.setName("MRI");
        assertEquals("MRI", test_dtl.getName());
    }

    @Test
    void testGetPrice() {
        Test_dtl test_dtl = new Test_dtl();
        test_dtl.setPrice(100.0);
        assertEquals(100.0, test_dtl.getPrice());
    }

    @Test
    void testSetPrice() {
        Test_dtl test_dtl = new Test_dtl();
        test_dtl.setPrice(75.0);
        assertEquals(75.0, test_dtl.getPrice());
    }
}
