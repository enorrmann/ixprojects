package ar.com.ix.proyectos.web.converter;
import ar.com.ix.proyectos.model.Proyecto;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Proyecto.class)
public class ProyectoConverter implements Converter {
}
