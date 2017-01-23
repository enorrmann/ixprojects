package ar.com.ix.proyectos.web.converter;
import ar.com.ix.proyectos.model.Usuario;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Usuario.class)
public class UsuarioConverter implements Converter {
}
