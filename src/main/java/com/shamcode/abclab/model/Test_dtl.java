package com.shamcode.abclab.model;

public class Test_dtl {
	private int testid;
	private String name;
	private double price;
	
	public Test_dtl(int testid, String name, double price) {
		this.testid = testid;
		this.name = name;
		this.price = price;
	}
	public Test_dtl(String name, double price) {
		this.name = name;
		this.price = price;
	}

	public Test_dtl() {
		
	}

	public int gettestid() {
		return testid;
	}

	public void settestid(int testid) {
		this.testid = testid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}	

}
