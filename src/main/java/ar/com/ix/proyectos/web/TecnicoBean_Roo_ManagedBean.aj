// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.proyectos.web;

import ar.com.ix.proyectos.model.Tecnico;
import ar.com.ix.proyectos.web.TecnicoBean;
import ar.com.ix.proyectos.web.util.MessageFactory;
import java.util.ArrayList;
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
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect TecnicoBean_Roo_ManagedBean {
    
    declare @type: TecnicoBean: @ManagedBean(name = "tecnicoBean");
    
    declare @type: TecnicoBean: @SessionScoped;
    
    private String TecnicoBean.name = "Tecnicoes";
    
    private Tecnico TecnicoBean.tecnico;
    
    private List<Tecnico> TecnicoBean.allTecnicoes;
    
    private boolean TecnicoBean.dataVisible = false;
    
    private List<String> TecnicoBean.columns;
    
    private HtmlPanelGrid TecnicoBean.createPanelGrid;
    
    private HtmlPanelGrid TecnicoBean.editPanelGrid;
    
    private HtmlPanelGrid TecnicoBean.viewPanelGrid;
    
    private boolean TecnicoBean.createDialogVisible = false;
    
    @PostConstruct
    public void TecnicoBean.init() {
        columns = new ArrayList<String>();
        columns.add("nombre");
        columns.add("domicilio");
    }
    
    public String TecnicoBean.getName() {
        return name;
    }
    
    public List<String> TecnicoBean.getColumns() {
        return columns;
    }
    
    public List<Tecnico> TecnicoBean.getAllTecnicoes() {
        return allTecnicoes;
    }
    
    public void TecnicoBean.setAllTecnicoes(List<Tecnico> allTecnicoes) {
        this.allTecnicoes = allTecnicoes;
    }
    
    public String TecnicoBean.findAllTecnicoes() {
        allTecnicoes = Tecnico.findAllTecnicoes();
        dataVisible = !allTecnicoes.isEmpty();
        return null;
    }
    
    public boolean TecnicoBean.isDataVisible() {
        return dataVisible;
    }
    
    public void TecnicoBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid TecnicoBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void TecnicoBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid TecnicoBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void TecnicoBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid TecnicoBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void TecnicoBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid TecnicoBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nombreCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nombreCreateOutput.setFor("nombreCreateInput");
        nombreCreateOutput.setId("nombreCreateOutput");
        nombreCreateOutput.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreCreateOutput);
        
        InputText nombreCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nombreCreateInput.setId("nombreCreateInput");
        nombreCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tecnicoBean.tecnico.nombre}", String.class));
        nombreCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreCreateInput);
        
        Message nombreCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreCreateInputMessage.setId("nombreCreateInputMessage");
        nombreCreateInputMessage.setFor("nombreCreateInput");
        nombreCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreCreateInputMessage);
        
        OutputLabel domicilioCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        domicilioCreateOutput.setFor("domicilioCreateInput");
        domicilioCreateOutput.setId("domicilioCreateOutput");
        domicilioCreateOutput.setValue("Domicilio:");
        htmlPanelGrid.getChildren().add(domicilioCreateOutput);
        
        InputText domicilioCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        domicilioCreateInput.setId("domicilioCreateInput");
        domicilioCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tecnicoBean.tecnico.domicilio}", String.class));
        domicilioCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(domicilioCreateInput);
        
        Message domicilioCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        domicilioCreateInputMessage.setId("domicilioCreateInputMessage");
        domicilioCreateInputMessage.setFor("domicilioCreateInput");
        domicilioCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(domicilioCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid TecnicoBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nombreEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nombreEditOutput.setFor("nombreEditInput");
        nombreEditOutput.setId("nombreEditOutput");
        nombreEditOutput.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreEditOutput);
        
        InputText nombreEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nombreEditInput.setId("nombreEditInput");
        nombreEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tecnicoBean.tecnico.nombre}", String.class));
        nombreEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nombreEditInput);
        
        Message nombreEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nombreEditInputMessage.setId("nombreEditInputMessage");
        nombreEditInputMessage.setFor("nombreEditInput");
        nombreEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nombreEditInputMessage);
        
        OutputLabel domicilioEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        domicilioEditOutput.setFor("domicilioEditInput");
        domicilioEditOutput.setId("domicilioEditOutput");
        domicilioEditOutput.setValue("Domicilio:");
        htmlPanelGrid.getChildren().add(domicilioEditOutput);
        
        InputText domicilioEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        domicilioEditInput.setId("domicilioEditInput");
        domicilioEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tecnicoBean.tecnico.domicilio}", String.class));
        domicilioEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(domicilioEditInput);
        
        Message domicilioEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        domicilioEditInputMessage.setId("domicilioEditInputMessage");
        domicilioEditInputMessage.setFor("domicilioEditInput");
        domicilioEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(domicilioEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid TecnicoBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText nombreLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nombreLabel.setId("nombreLabel");
        nombreLabel.setValue("Nombre:");
        htmlPanelGrid.getChildren().add(nombreLabel);
        
        HtmlOutputText nombreValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nombreValue.setId("nombreValue");
        nombreValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tecnicoBean.tecnico.nombre}", String.class));
        htmlPanelGrid.getChildren().add(nombreValue);
        
        HtmlOutputText domicilioLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        domicilioLabel.setId("domicilioLabel");
        domicilioLabel.setValue("Domicilio:");
        htmlPanelGrid.getChildren().add(domicilioLabel);
        
        HtmlOutputText domicilioValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        domicilioValue.setId("domicilioValue");
        domicilioValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{tecnicoBean.tecnico.domicilio}", String.class));
        htmlPanelGrid.getChildren().add(domicilioValue);
        
        return htmlPanelGrid;
    }
    
    public Tecnico TecnicoBean.getTecnico() {
        if (tecnico == null) {
            tecnico = new Tecnico();
        }
        return tecnico;
    }
    
    public void TecnicoBean.setTecnico(Tecnico tecnico) {
        this.tecnico = tecnico;
    }
    
    public String TecnicoBean.onEdit() {
        return null;
    }
    
    public boolean TecnicoBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void TecnicoBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String TecnicoBean.displayList() {
        createDialogVisible = false;
        findAllTecnicoes();
        return "tecnico";
    }
    
    public String TecnicoBean.displayCreateDialog() {
        tecnico = new Tecnico();
        createDialogVisible = true;
        return "tecnico";
    }
    
    public String TecnicoBean.persist() {
        String message = "";
        if (tecnico.getId() != null) {
            tecnico.merge();
            message = "message_successfully_updated";
        } else {
            tecnico.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Tecnico");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllTecnicoes();
    }
    
    public String TecnicoBean.delete() {
        tecnico.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Tecnico");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllTecnicoes();
    }
    
    public void TecnicoBean.reset() {
        tecnico = null;
        createDialogVisible = false;
    }
    
    public void TecnicoBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
