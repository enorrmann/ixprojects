// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.proyectos.web.converter;

import ar.com.ix.proyectos.model.Pais;
import ar.com.ix.proyectos.web.converter.PaisConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect PaisConverter_Roo_Converter {
    
    declare @type: PaisConverter: @FacesConverter("ar.com.ix.proyectos.web.converter.PaisConverter");
    
    public Object PaisConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Pais.findPais(id);
    }
    
    public String PaisConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Pais ? ((Pais) value).getId().toString() : "";
    }
    
}
