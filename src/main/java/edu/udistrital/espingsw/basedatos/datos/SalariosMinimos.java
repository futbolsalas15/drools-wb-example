package edu.udistrital.espingsw.basedatos.datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SalariosMinimos {

	private PreparedStatement psSalarioMin;

	public SalariosMinimos() {
		try {
			Connection conn = BaseDatos.getInstance().getConn();
			psSalarioMin = conn.prepareStatement("SELECT Max(SalarioMinMensual) SalarioMin FROM HistoricoSalariosMin WHERE Ano = ?");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public long getSalarioMinimo(int ano){
		long salarioMinimo = 0;
		try {
			psSalarioMin.setInt(1, ano);
			ResultSet rs = psSalarioMin.executeQuery();
			rs.next();
			salarioMinimo = rs.getLong("SalarioMin");
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salarioMinimo;
	}
	
}
