package ar.com.ix.proyectos.web.converter;
import ar.com.ix.proyectos.model.AuditoriaVirtual;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = AuditoriaVirtual.class)
public class AuditoriaVirtualConverter implements Converter {
}
