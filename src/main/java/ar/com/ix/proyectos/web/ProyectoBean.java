package ar.com.ix.proyectos.web;
import ar.com.ix.proyectos.model.Proyecto;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Proyecto.class, beanName = "proyectoBean")
public class ProyectoBean {
}
