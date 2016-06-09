package edu.udistrital.espingsw.basedatos.bean;

import java.io.Serializable;
import java.util.Calendar;

import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;

import edu.udistrital.espingsw.basedatos.datos.SalariosMinimos;
import edu.udistrital.espingsw.liquidacionproject.Estudiante;
import edu.udistrital.espingsw.liquidacionproject.LugarResidencia;
import edu.udistrital.espingsw.liquidacionproject.PuntosBasicosMatricula;

@Named("homeBean")
@SessionScoped
public class HomeBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Estudiante estudiante;
	private int anoGraduacionSecundaria;
	private Integer valorPension;
	private int ingresos;
	private boolean casado;
	private boolean masDeCienMilHab;
	private boolean masDeCienMilHabResp;
	@Inject
	private ReglasNegocio reglasNegocio;
	
	
	@PostConstruct
	public void init() {
		estudiante = new Estudiante();
		estudiante.setResidenciaEstudiante(new LugarResidencia());
		estudiante.setResidenciaRespManutencion(new LugarResidencia());
		estudiante.setPbm(new PuntosBasicosMatricula(null, null, null, null,
				null, null, null));
	}

	public void calcular() {
		estudiante.getPbm().setA1(100);
		estudiante.getPbm().setA2(100);
		estudiante.getPbm().setA3(100);
		estudiante.getPbm().setB1(1.0);
		estudiante.getPbm().setB2(1.0);
		estudiante.getPbm().setB3(1.0);
		estudiante.getPbm().setB4(1.0);
		estudiante.setEstadoCivil((casado) ? "CASADO": "SOLTERO");
		estudiante.setPension(getEquivalenciaSalMin(this.anoGraduacionSecundaria, this.anoGraduacionSecundaria));
		estudiante.setIngresosFamiliares(getEquivalenciaSalMin(this.ingresos, Calendar.getInstance().get(Calendar.YEAR)));
		estudiante.getResidenciaEstudiante().setNoHabitantesCiudad((masDeCienMilHab) ? 100001 : 99000);
		estudiante.getResidenciaRespManutencion().setNoHabitantesCiudad((masDeCienMilHabResp) ? 100001 : 99000);
		reglasNegocio.validar(estudiante);
	}

	private double getEquivalenciaSalMin(int valor, int ano) {
		double equivalenciaSalMin = 0.0;
		SalariosMinimos salMin = new SalariosMinimos();
		long salarioMinimoAno = salMin
				.getSalarioMinimo(ano);
		equivalenciaSalMin = Math
				.round(((double) valor / salarioMinimoAno) * 100.0) / 100.0;
		return equivalenciaSalMin;
	}

	/* GETTERS - SETTERS */
	public Estudiante getEstudiante() {
		return estudiante;
	}

	public void setEstudiante(Estudiante estudiante) {
		this.estudiante = estudiante;
	}

	public int getAnoGraduacionSecundaria() {
		return anoGraduacionSecundaria;
	}

	public void setAnoGraduacionSecundaria(int anoGraduacionSecundaria) {
		this.anoGraduacionSecundaria = anoGraduacionSecundaria;
	}

	public Integer getValorPension() {
		return valorPension;
	}

	public void setValorPension(Integer valorPension) {
		this.valorPension = valorPension;
	}

	public int getIngresos() {
		return ingresos;
	}

	public void setIngresos(int ingresos) {
		this.ingresos = ingresos;
	}

	public boolean isCasado() {
		return casado;
	}

	public void setCasado(boolean casado) {
		this.casado = casado;
	}

	public boolean isMasDeCienMilHab() {
		return masDeCienMilHab;
	}

	public void setMasDeCienMilHab(boolean masDeCienMilHab) {
		this.masDeCienMilHab = masDeCienMilHab;
	}

	public boolean isMasDeCienMilHabResp() {
		return masDeCienMilHabResp;
	}

	public void setMasDeCienMilHabResp(boolean masDeCienMilHabResp) {
		this.masDeCienMilHabResp = masDeCienMilHabResp;
	}

}
