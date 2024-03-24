package com.shamcode.abclab.service;

import  com.shamcode.abclab.dao.testManager;
import  com.shamcode.abclab.model.Test_dtl;

import java.sql.SQLException;
import java.util.List;


public class TestService {

	private static TestService testServiceObj;
	
	private TestService() {
		
	}
	public static synchronized TestService getTestServiceInstance() {
		
		if(testServiceObj == null) {
			testServiceObj = new TestService();
		}
		
		return testServiceObj;
	}
	
	private testManager gettestManager() {
		return new testManager();
	}
	
	public boolean registerTest(Test_dtl test) throws ClassNotFoundException, SQLException  {
		return gettestManager().addTest(test);
	}
	
	public Test_dtl getSpecificTest(int testid) throws ClassNotFoundException, SQLException {		
		return gettestManager().getSpecificTest(testid);
	}
	
	public List<Test_dtl> getAllTests() throws ClassNotFoundException, SQLException  {
		return gettestManager().getAllTests();
	}
	
	public boolean editTheTest(Test_dtl test) throws ClassNotFoundException, SQLException  {
		return gettestManager().updateTest(test);
	}
	
	public boolean deleteTheTest(int testid) throws ClassNotFoundException, SQLException  {
		return gettestManager().deleteTest(testid);
	}
	
}