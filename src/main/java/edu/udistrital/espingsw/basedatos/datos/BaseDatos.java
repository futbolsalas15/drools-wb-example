package edu.udistrital.espingsw.basedatos.datos;

import java.sql.Connection;
import java.sql.DriverManager;

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
		return conn;
	}

}
