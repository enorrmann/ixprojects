package ar.com.ix.proyectos.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Usuario {

    /**
     */
    private String nombre;

    /**
     */
    private String password;

    /**
     */
    private String rol;
}
