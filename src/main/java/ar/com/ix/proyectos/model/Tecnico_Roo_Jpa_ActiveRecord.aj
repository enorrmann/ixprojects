// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.proyectos.model;

import ar.com.ix.proyectos.model.Tecnico;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Tecnico_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Tecnico.entityManager;
    
    public static final List<String> Tecnico.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre", "pais");
    
    public static final EntityManager Tecnico.entityManager() {
        EntityManager em = new Tecnico().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Tecnico.countTecnicoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Tecnico o", Long.class).getSingleResult();
    }
    
    public static List<Tecnico> Tecnico.findAllTecnicoes() {
        return entityManager().createQuery("SELECT o FROM Tecnico o", Tecnico.class).getResultList();
    }
    
    public static List<Tecnico> Tecnico.findAllTecnicoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Tecnico o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Tecnico.class).getResultList();
    }
    
    public static Tecnico Tecnico.findTecnico(Long id) {
        if (id == null) return null;
        return entityManager().find(Tecnico.class, id);
    }
    
    public static List<Tecnico> Tecnico.findTecnicoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Tecnico o", Tecnico.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Tecnico> Tecnico.findTecnicoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Tecnico o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Tecnico.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Tecnico.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Tecnico.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Tecnico attached = Tecnico.findTecnico(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Tecnico.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Tecnico.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Tecnico Tecnico.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Tecnico merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
