package ar.com.ix.proyectos.web;
import ar.com.ix.proyectos.model.Pais;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Pais.class, beanName = "paisBean")
public class PaisBean {
}
