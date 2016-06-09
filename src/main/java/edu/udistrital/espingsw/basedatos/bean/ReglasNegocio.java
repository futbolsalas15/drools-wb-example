package edu.udistrital.espingsw.basedatos.bean;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import org.kie.api.cdi.KReleaseId;
import org.kie.api.cdi.KSession;
import org.kie.api.runtime.KieSession;
import org.kie.api.runtime.rule.FactHandle;

import edu.udistrital.espingsw.liquidacionproject.Estudiante;

@ApplicationScoped
public class ReglasNegocio {

	@Inject
	@KSession(name = "defaultKieSession")
	@KReleaseId(groupId = "edu.udistrital.espingsw", artifactId = "liquidacionProject", version = "LATEST")
	private KieSession kSession;
	
	public void validar(Estudiante estudiante){
//		System.out.println("Tiene servicios estratificados:" +estudiante.getResidenciaEstudiante().getHasServiciosEstratificados());
//		System.out.println("Estrato:" +estudiante.getResidenciaEstudiante().getEstrato());
//		System.out.println("Es Area Rural:" +estudiante.getResidenciaEstudiante().getIsAreaRural());
//		System.out.println("No Habitantes Ciudad:" +estudiante.getResidenciaEstudiante().getNoHabitantesCiudad());
//		System.out.println("a1:" +estudiante.getPbm().getA1());
		FactHandle factHandle = kSession.insert(estudiante);
		int noReglas = kSession.fireAllRules();
		kSession.delete(factHandle);
		System.out.println("No reglas arrojadas: "+noReglas);
//		System.out.println("a1:" +estudiante.getPbm().getA1());
	}
	
}
