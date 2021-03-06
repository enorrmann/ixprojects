// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.proyectos.web;

import ar.com.ix.proyectos.model.Jornada;
import ar.com.ix.proyectos.model.Proyecto;
import ar.com.ix.proyectos.model.Tecnico;
import ar.com.ix.proyectos.web.JornadaBean;
import ar.com.ix.proyectos.web.converter.ProyectoConverter;
import ar.com.ix.proyectos.web.converter.TecnicoConverter;
import ar.com.ix.proyectos.web.util.MessageFactory;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import javax.faces.convert.DateTimeConverter;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.calendar.Calendar;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect JornadaBean_Roo_ManagedBean {
    
    declare @type: JornadaBean: @ManagedBean(name = "jornadaBean");
    
    declare @type: JornadaBean: @SessionScoped;
    
    private String JornadaBean.name = "Jornadas";
    
    private Jornada JornadaBean.jornada;
    
    private List<Jornada> JornadaBean.allJornadas;
    
    private boolean JornadaBean.dataVisible = false;
    
    private List<String> JornadaBean.columns;
    
    private HtmlPanelGrid JornadaBean.createPanelGrid;
    
    private HtmlPanelGrid JornadaBean.editPanelGrid;
    
    private HtmlPanelGrid JornadaBean.viewPanelGrid;
    
    private boolean JornadaBean.createDialogVisible = false;
    
    @PostConstruct
    public void JornadaBean.init() {
        columns = new ArrayList<String>();
        columns.add("fecha");
    }
    
    public String JornadaBean.getName() {
        return name;
    }
    
    public List<String> JornadaBean.getColumns() {
        return columns;
    }
    
    public List<Jornada> JornadaBean.getAllJornadas() {
        return allJornadas;
    }
    
    public void JornadaBean.setAllJornadas(List<Jornada> allJornadas) {
        this.allJornadas = allJornadas;
    }
    
    public String JornadaBean.findAllJornadas() {
        allJornadas = Jornada.findAllJornadas();
        dataVisible = !allJornadas.isEmpty();
        return null;
    }
    
    public boolean JornadaBean.isDataVisible() {
        return dataVisible;
    }
    
    public void JornadaBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid JornadaBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void JornadaBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid JornadaBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void JornadaBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid JornadaBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void JornadaBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid JornadaBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel tecnicoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        tecnicoCreateOutput.setFor("tecnicoCreateInput");
        tecnicoCreateOutput.setId("tecnicoCreateOutput");
        tecnicoCreateOutput.setValue("Tecnico:");
        htmlPanelGrid.getChildren().add(tecnicoCreateOutput);
        
        AutoComplete tecnicoCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        tecnicoCreateInput.setId("tecnicoCreateInput");
        tecnicoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.tecnico}", Tecnico.class));
        tecnicoCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{jornadaBean.completeTecnico}", List.class, new Class[] { String.class }));
        tecnicoCreateInput.setDropdown(true);
        tecnicoCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "tecnico", String.class));
        tecnicoCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{tecnico.nombre}", String.class));
        tecnicoCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{tecnico}", Tecnico.class));
        tecnicoCreateInput.setConverter(new TecnicoConverter());
        tecnicoCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(tecnicoCreateInput);
        
        Message tecnicoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        tecnicoCreateInputMessage.setId("tecnicoCreateInputMessage");
        tecnicoCreateInputMessage.setFor("tecnicoCreateInput");
        tecnicoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(tecnicoCreateInputMessage);
        
       
       /* OutputLabel proyectoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        proyectoCreateOutput.setFor("proyectoCreateInput");
        proyectoCreateOutput.setId("proyectoCreateOutput");
        proyectoCreateOutput.setValue("Proyecto:");
        htmlPanelGrid.getChildren().add(proyectoCreateOutput);
        
        AutoComplete proyectoCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        proyectoCreateInput.setId("proyectoCreateInput");
        proyectoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.proyecto}", Proyecto.class));
        proyectoCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{jornadaBean.completeProyecto}", List.class, new Class[] { String.class }));
        proyectoCreateInput.setDropdown(true);
        proyectoCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "proyecto", String.class));
        proyectoCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{proyecto.codigo}", String.class));
        proyectoCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{proyecto}", Proyecto.class));
        proyectoCreateInput.setConverter(new ProyectoConverter());
        proyectoCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(proyectoCreateInput);
        
        Message proyectoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        proyectoCreateInputMessage.setId("proyectoCreateInputMessage");
        proyectoCreateInputMessage.setFor("proyectoCreateInput");
        proyectoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(proyectoCreateInputMessage);
        */
        OutputLabel fechaCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        fechaCreateOutput.setFor("fechaCreateInput");
        fechaCreateOutput.setId("fechaCreateOutput");
        fechaCreateOutput.setValue("Fecha:");
        htmlPanelGrid.getChildren().add(fechaCreateOutput);
        
        Calendar fechaCreateInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        fechaCreateInput.setId("fechaCreateInput");
        fechaCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.fecha}", Date.class));
        fechaCreateInput.setNavigator(true);
        fechaCreateInput.setEffect("slideDown");
        fechaCreateInput.setPattern("dd/MM/yyyy");
        fechaCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(fechaCreateInput);
        
        Message fechaCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        fechaCreateInputMessage.setId("fechaCreateInputMessage");
        fechaCreateInputMessage.setFor("fechaCreateInput");
        fechaCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(fechaCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid JornadaBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel tecnicoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        tecnicoEditOutput.setFor("tecnicoEditInput");
        tecnicoEditOutput.setId("tecnicoEditOutput");
        tecnicoEditOutput.setValue("Tecnico:");
        htmlPanelGrid.getChildren().add(tecnicoEditOutput);
        
        AutoComplete tecnicoEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        tecnicoEditInput.setId("tecnicoEditInput");
        tecnicoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.tecnico}", Tecnico.class));
        tecnicoEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{jornadaBean.completeTecnico}", List.class, new Class[] { String.class }));
        tecnicoEditInput.setDropdown(true);
        tecnicoEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "tecnico", String.class));
        tecnicoEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{tecnico.nombre}", String.class));
        tecnicoEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{tecnico}", Tecnico.class));
        tecnicoEditInput.setConverter(new TecnicoConverter());
        tecnicoEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(tecnicoEditInput);
        
        Message tecnicoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        tecnicoEditInputMessage.setId("tecnicoEditInputMessage");
        tecnicoEditInputMessage.setFor("tecnicoEditInput");
        tecnicoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(tecnicoEditInputMessage);
        
        OutputLabel proyectoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        proyectoEditOutput.setFor("proyectoEditInput");
        proyectoEditOutput.setId("proyectoEditOutput");
        proyectoEditOutput.setValue("Proyecto:");
        htmlPanelGrid.getChildren().add(proyectoEditOutput);
        
        AutoComplete proyectoEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        proyectoEditInput.setId("proyectoEditInput");
        proyectoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.proyecto}", Proyecto.class));
        proyectoEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{jornadaBean.completeProyecto}", List.class, new Class[] { String.class }));
        proyectoEditInput.setDropdown(true);
        proyectoEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "proyecto", String.class));
        proyectoEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{proyecto.codigo}", String.class));
        proyectoEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{proyecto}", Proyecto.class));
        proyectoEditInput.setConverter(new ProyectoConverter());
        proyectoEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(proyectoEditInput);
        
        Message proyectoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        proyectoEditInputMessage.setId("proyectoEditInputMessage");
        proyectoEditInputMessage.setFor("proyectoEditInput");
        proyectoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(proyectoEditInputMessage);
        
        OutputLabel fechaEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        fechaEditOutput.setFor("fechaEditInput");
        fechaEditOutput.setId("fechaEditOutput");
        fechaEditOutput.setValue("Fecha:");
        htmlPanelGrid.getChildren().add(fechaEditOutput);
        
        Calendar fechaEditInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        fechaEditInput.setId("fechaEditInput");
        fechaEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.fecha}", Date.class));
        fechaEditInput.setNavigator(true);
        fechaEditInput.setEffect("slideDown");
        fechaEditInput.setPattern("dd/MM/yyyy");
        fechaEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(fechaEditInput);
        
        Message fechaEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        fechaEditInputMessage.setId("fechaEditInputMessage");
        fechaEditInputMessage.setFor("fechaEditInput");
        fechaEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(fechaEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid JornadaBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText tecnicoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tecnicoLabel.setId("tecnicoLabel");
        tecnicoLabel.setValue("Tecnico:");
        htmlPanelGrid.getChildren().add(tecnicoLabel);
        
        HtmlOutputText tecnicoValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        tecnicoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.tecnico}", Tecnico.class));
        tecnicoValue.setConverter(new TecnicoConverter());
        htmlPanelGrid.getChildren().add(tecnicoValue);
        
        HtmlOutputText proyectoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        proyectoLabel.setId("proyectoLabel");
        proyectoLabel.setValue("Proyecto:");
        htmlPanelGrid.getChildren().add(proyectoLabel);
        
        HtmlOutputText proyectoValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        proyectoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.proyecto}", Proyecto.class));
        proyectoValue.setConverter(new ProyectoConverter());
        htmlPanelGrid.getChildren().add(proyectoValue);
        
        HtmlOutputText fechaLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        fechaLabel.setId("fechaLabel");
        fechaLabel.setValue("Fecha:");
        htmlPanelGrid.getChildren().add(fechaLabel);
        
        HtmlOutputText fechaValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        fechaValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{jornadaBean.jornada.fecha}", Date.class));
        DateTimeConverter fechaValueConverter = (DateTimeConverter) application.createConverter(DateTimeConverter.CONVERTER_ID);
        fechaValueConverter.setPattern("dd/MM/yyyy");
        fechaValue.setConverter(fechaValueConverter);
        htmlPanelGrid.getChildren().add(fechaValue);
        
        return htmlPanelGrid;
    }
    
    public Jornada JornadaBean.getJornada() {
        if (jornada == null) {
            jornada = new Jornada();
        }
        return jornada;
    }
    
    public void JornadaBean.setJornada(Jornada jornada) {
        this.jornada = jornada;
    }
    
    public List<Tecnico> JornadaBean.completeTecnico(String query) {
        List<Tecnico> suggestions = new ArrayList<Tecnico>();
        for (Tecnico tecnico : Tecnico.findAllTecnicoes()) {
            String tecnicoStr = String.valueOf(tecnico.getNombre());
            if (tecnicoStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(tecnico);
            }
        }
        return suggestions;
    }
    
    public List<Proyecto> JornadaBean.completeProyecto(String query) {
        List<Proyecto> suggestions = new ArrayList<Proyecto>();
        for (Proyecto proyecto : Proyecto.findAllProyectoes()) {
            String proyectoStr = String.valueOf(proyecto.getCodigo());
            if (proyectoStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(proyecto);
            }
        }
        return suggestions;
    }
    
    public String JornadaBean.onEdit() {
        return null;
    }
    
    public boolean JornadaBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void JornadaBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String JornadaBean.displayList() {
        createDialogVisible = false;
        findAllJornadas();
        return "jornada";
    }
    
    public String JornadaBean.displayCreateDialog() {
        jornada = new Jornada();
        jornada.setProyecto(proyectoBean.getProyecto());
        createDialogVisible = true;
        return null;//"jornada";
    }
    
    public String JornadaBean.persist() {
        String message = "";
        if (jornada.getId() != null) {
            jornada.merge();
            message = "message_successfully_updated";
        } else {
            jornada.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        //context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Jornada");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return null;//findAllJornadas();
    }
    
    public String JornadaBean.delete() {
        jornada.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Jornada");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllJornadas();
    }
    
    public void JornadaBean.reset() {
        jornada = null;
        createDialogVisible = false;
    }
    
    public void JornadaBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
