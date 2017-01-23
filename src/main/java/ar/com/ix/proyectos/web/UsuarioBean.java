package ar.com.ix.proyectos.web;
import ar.com.ix.proyectos.model.Usuario;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Usuario.class, beanName = "usuarioBean")
public class UsuarioBean {
}
