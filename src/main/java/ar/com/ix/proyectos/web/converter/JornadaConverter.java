package ar.com.ix.proyectos.web.converter;
import ar.com.ix.proyectos.model.Jornada;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Jornada.class)
public class JornadaConverter implements Converter {
}
