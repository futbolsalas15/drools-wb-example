package edu.udistrital.espingsw.basedatos.bean;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;

import org.kie.api.KieServices;
import org.kie.api.builder.ReleaseId;
import org.kie.api.cdi.KReleaseId;
import org.kie.api.cdi.KSession;
import org.kie.api.runtime.KieContainer;
import org.kie.api.runtime.KieSession;

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
	private int valorPension;
	private int ingresos;
	private boolean casado;
	private boolean masDeCienMilHab;
	private boolean masDeCienMilHabResp;
	/*
	@Inject
	@KSession("defaultKieSession") 
	@KReleaseId( groupId = "edu.udistrital.espingsw", artifactId = "liquidacionProject", version = "LATEST")
	private KieSession kSession;
	*/

	@PostConstruct
	public void init(){
		estudiante = new Estudiante();
		estudiante.setResidenciaEstudiante(new LugarResidencia());
		estudiante.setResidenciaRespManutencion(new LugarResidencia());
		estudiante.setPbm(new PuntosBasicosMatricula(null, null, null, null, null, null, null));
	}
	
	public void calcular() {
		KieServices kieServices = KieServices.Factory.get();
		ReleaseId releaseId = kieServices.newReleaseId(
				"edu.udistrital.espingsw", "liquidacionProject", "LATEST");
		KieContainer kContainer = kieServices.newKieContainer(releaseId);
		KieSession kSession = kContainer.newKieSession();
		kSession.insert(estudiante);
		kSession.fireAllRules();
		
	}

	private double getEquivalenciaSalMinPension(){
		double equivalenciaSalMin = 0.0;
		SalariosMinimos salMin = new SalariosMinimos();
		long salarioMinimoAno = salMin.getSalarioMinimo(this.anoGraduacionSecundaria);
		equivalenciaSalMin = Math.round(((double) this.valorPension/salarioMinimoAno ) * 100.0) / 100.0;
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

	public int getValorPension() {
		return valorPension;
	}

	public void setValorPension(int valorPension) {
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
