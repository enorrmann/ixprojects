package ar.com.ix.proyectos.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Proyecto {

    /**
     */
    private String codigo;

    /**
     */
    @ManyToOne
    private Usuario responsable;
}
