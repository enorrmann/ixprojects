package ar.com.ix.proyectos.model;

import ar.com.ix.proyectos.model.Proyecto;
import ar.com.ix.proyectos.model.Tecnico;
import java.util.List;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import org.primefaces.model.DefaultScheduleEvent;
import org.primefaces.model.DefaultScheduleModel;
import org.primefaces.model.LazyScheduleModel;
import org.primefaces.model.ScheduleEvent;
import org.primefaces.model.ScheduleModel;

privileged aspect Proyecto_Roo_Jpa_custom {
    
    public List<Jornada> Proyecto.getJornadas() {
        return Proyecto.entityManager().createQuery("SELECT o FROM Jornada o where o.proyecto = :proyecto", Jornada.class).setParameter("proyecto",this).getResultList();
    }

    public List<Tecnico> Proyecto.getTecnicos() {
        return Proyecto.entityManager().createQuery("SELECT distinct j.tecnico FROM Jornada j where j.proyecto = :proyecto", Tecnico.class).setParameter("proyecto",this).getResultList();
    }
    
	public ScheduleModel Proyecto.getSchedule(){
		DefaultScheduleModel eventModel = new DefaultScheduleModel();
		for (Jornada unaJornada:getJornadas()){
			eventModel.addEvent(
				new DefaultScheduleEvent(unaJornada.getTecnico().getNombre(), unaJornada.getFecha(), unaJornada.getFecha(), true)
				);

		}
		return eventModel;
	}
}
