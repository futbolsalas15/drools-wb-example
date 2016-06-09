package edu.udistrital.espingsw.basedatos.datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDatos {

	private static BaseDatos instance;
	private String user = "liquidacion";
	private String password = "liquidacion";
	private Connection conn;

	private BaseDatos() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(
					"jdbc:mysql://docker.dev/liquidacion", user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static BaseDatos getInstance() {
		if (instance == null) {
			instance = new BaseDatos();
		}
		return instance;
	}

	public Connection getConn() {
		try {
			if (conn.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				conn = DriverManager.getConnection(
						"jdbc:mysql://docker.dev/liquidacion", user, password);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
