package com.shamcode.abclab.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import com.shamcode.abclab.model.Test_dtl;

public class testManager {

public DbConnector getDbConnector() {
		
		DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl(); 
		return factory.getDbConnector();
	}
private Connection getConnection() throws ClassNotFoundException, SQLException{
	
	DbConnector connector =  getDbConnector();
	return connector.getDbConnection();
}
public boolean addTest(Test_dtl test) throws ClassNotFoundException, SQLException  {
	
	Connection connection = getConnection(); 
	String query = "INSERT INTO test (name, price) VALUES (?, ?)";
	
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setString(1, test.getName());
	ps.setDouble(2, test.getPrice());
	
	int result = ps.executeUpdate();
	
	ps.close();
	connection.close();		
	return result > 0;
}
public Test_dtl getSpecificTest(int testid) throws SQLException, ClassNotFoundException  {
	
	Connection connection = getConnection();
	String query = "SELECT * FROM test WHERE testid = ?";
	
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setInt(1, testid);
	
	ResultSet rs = ps.executeQuery();
	Test_dtl test = new Test_dtl();
	
	while(rs.next()) {
		test.settestid(rs.getInt("testid"));
		test.setName(rs.getString("name"));
		test.setPrice(rs.getDouble("price"));
	}
	
	ps.close();
	connection.close();		
	return test;
}

public List<Test_dtl> getAllTests() throws SQLException, ClassNotFoundException {
	
	Connection connection = getConnection();	
	List<Test_dtl> testList = new ArrayList<Test_dtl>();
	
	String query = "SELECT * FROM test";
	
	Statement st = connection.createStatement();
	
	ResultSet rs = st.executeQuery(query);
	
	while(rs.next()) {
		
		Test_dtl test = new Test_dtl();
		test.settestid(rs.getInt("testid"));
		test.setName(rs.getString("name"));
		test.setPrice(rs.getDouble("price"));
		
		testList.add(test);
	}
	
	st.close();
	connection.close();
	
	return testList;		
}

public boolean updateTest(Test_dtl test) throws ClassNotFoundException, SQLException{
	
	Connection connection = getConnection();
	String query = "UPDATE test SET name = ?, price = ? WHERE testid = ?";
	
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setString(1, test.getName());
	ps.setDouble(2, test.getPrice());
	ps.setInt(3, test.gettestid());
	
	int result = ps.executeUpdate();
	
	ps.close();
	connection.close();
	return result > 0;
}

public boolean deleteTest(int testid) throws ClassNotFoundException, SQLException  {
	
	Connection connection = getConnection();		
	String query = "DELETE FROM test WHERE testid = ?";
	
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setInt(1, testid);
	int result = ps.executeUpdate();
	
	ps.close();
	connection.close();		
	return result > 0;
}
}
