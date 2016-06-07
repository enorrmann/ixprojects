package ar.com.ix.proyectos.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Proyecto {

    /**
     */
    private String responsable;

    /**
     */
    private String codigo;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaDeInicioEstimada;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaDeInicio;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaDeFinalizacionEstimada;

    /**
     */
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaDeFinalizacion;

    /**
     */
    private String ingenieria;

    /**
     */
    private String cronograma;

    /**
     */
    private String informacionRecibida;

    /**
     */
    private String auditoriaVirtual;

    /**
     */
    private String correccionesDeAuditoria;

    /**
     */
    private String auditoriaCorregida;

    /**
     */
    private String comentariosYObservaciones;
}
