package com.gn.common.sql;

import java.io.FileReader;
import java.sql.Connection;
import java.util.Properties;

public class JDBCTemplate {
	
	public static Connection getConnection() {
		Connection conn = null;
		Properties prop = new Properties();
		try {
			
			String path = JDBCTemplate.class.getResource("driver.properties").getPath();
			prop.load(new FileReader(path));
			System.out.println(prop.getProperty("driver"));
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
