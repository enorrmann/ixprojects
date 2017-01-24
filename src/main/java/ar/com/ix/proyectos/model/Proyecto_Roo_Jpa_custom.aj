// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.proyectos.model;

import ar.com.ix.proyectos.model.Proyecto;
import ar.com.ix.proyectos.model.Tecnico;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Proyecto_Roo_Jpa_custom {
    
    public List<Jornada> Proyecto.getJornadas() {
        return Proyecto.entityManager().createQuery("SELECT o FROM Jornada o where o.proyecto = :proyecto", Jornada.class).setParameter("proyecto",this).getResultList();
    }

    public List<Tecnico> Proyecto.getTecnicos() {
        return Proyecto.entityManager().createQuery("SELECT distinct j.tecnico FROM Jornada j where j.proyecto = :proyecto", Tecnico.class).setParameter("proyecto",this).getResultList();
    }
    
    
}