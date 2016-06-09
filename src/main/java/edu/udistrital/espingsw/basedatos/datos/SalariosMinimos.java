package edu.udistrital.espingsw.basedatos.datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;

public class SalariosMinimos {

	private PreparedStatement psSalarioMin;
	private PreparedStatement psEquivPbm;

	public SalariosMinimos() {
		try {
			Connection conn = BaseDatos.getInstance().getConn();
			psSalarioMin = conn.prepareStatement("SELECT Max(SalarioMinMensual) SalarioMin FROM HistoricoSalariosMin WHERE Ano = ?");
			psEquivPbm = conn.prepareStatement("SELECT Max(SalariosMinimos) SalarioMin FROM EquivalenciaPBM WHERE Pbm = ?");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public long getSalarioMinimo(int ano){
		long salarioMinimo = 0;
		try {
			if (psSalarioMin.isClosed()) {
				Connection conn = BaseDatos.getInstance().getConn();
				psSalarioMin = conn.prepareStatement("SELECT Max(SalarioMinMensual) SalarioMin FROM HistoricoSalariosMin WHERE Ano = ?");
			}
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
	
	public long getVrMatricula(int pbm){
		long vrMatricula = 0;
		try {
			if (psEquivPbm.isClosed()) {
				Connection conn = BaseDatos.getInstance().getConn();
				psEquivPbm = conn.prepareStatement("SELECT Max(SalariosMinimos) SalarioMin FROM EquivalenciaPBM WHERE Pbm = ?");
			}
			psEquivPbm.setInt(1, pbm);
			ResultSet rs = psEquivPbm.executeQuery();
			rs.next();
			double noSalariosMin = rs.getDouble("SalarioMin");
			rs.close();
			long salarioMinActual = getSalarioMinimo(Calendar.getInstance().get(Calendar.YEAR));
			vrMatricula = (long) (salarioMinActual * noSalariosMin);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vrMatricula;
	}
	
}
