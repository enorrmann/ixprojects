package ar.com.ix.proyectos.web.converter;
import ar.com.ix.proyectos.model.Pais;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Pais.class)
public class PaisConverter implements Converter {
}
