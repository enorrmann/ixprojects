package ar.com.ix.proyectos.web;
import ar.com.ix.proyectos.model.Jornada;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@RooSerializable
@RooJsfManagedBean(entity = Jornada.class, beanName = "jornadaBean")
public class JornadaBean {

	@ManagedProperty(value="#{proyectoBean}")
	private ProyectoBean proyectoBean;

	public ProyectoBean getProyectoBean(){
		return proyectoBean;
	}

	public void setProyectoBean(ProyectoBean p){
		this.proyectoBean = p;
	}

}
