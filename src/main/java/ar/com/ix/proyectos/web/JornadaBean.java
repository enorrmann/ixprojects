package ar.com.ix.proyectos.web;
import ar.com.ix.proyectos.model.Jornada;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Jornada.class, beanName = "jornadaBean")
public class JornadaBean {
}
