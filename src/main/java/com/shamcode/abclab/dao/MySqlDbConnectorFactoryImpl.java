package com.shamcode.abclab.dao;



public class MySqlDbConnectorFactoryImpl implements DbConnectorFactory {

	@Override
	public DbConnector getDbConnector() {
		
		return new MySqlConnectorImpl();
		
	}

}
