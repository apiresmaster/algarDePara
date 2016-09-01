import com.accenture.integracao.Integracao
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_algarDePara_integracao_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/integracao/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
invokeTag('message','g',7,['code':("integracao.sistemaOrigem.label"),'default':("Sistema Origem")],-1)
printHtmlPart(1)
invokeTag('select','g',11,['class':("input-xlarge"),'id':("sistemaOrigem"),'name':("sistemaOrigem.id"),'from':(com.accenture.integracao.Sistema.list()),'optionKey':("id"),'required':(""),'value':(integracaoInstance?.sistemaOrigem?.id)],-1)
printHtmlPart(2)
invokeTag('message','g',18,['code':("integracao.tipoInformacao.label"),'default':("Tipo Informacao")],-1)
printHtmlPart(1)
invokeTag('select','g',22,['class':("input-xlarge"),'id':("tipoInformacao"),'name':("tipoInformacao.id"),'from':(com.accenture.integracao.TipoInformacao.list()),'optionKey':("id"),'required':(""),'value':(integracaoInstance?.tipoInformacao?.id)],-1)
printHtmlPart(3)
invokeTag('message','g',28,['code':("integracao.valorOrigem.label"),'default':("Valor Origem")],-1)
printHtmlPart(1)
invokeTag('textField','g',32,['class':("input-xlarge"),'name':("valorOrigem"),'maxlength':("50"),'required':(""),'value':(integracaoInstance?.valorOrigem)],-1)
printHtmlPart(4)
invokeTag('message','g',38,['code':("integracao.valorDestino.label"),'default':("Valor Destino")],-1)
printHtmlPart(5)
invokeTag('textArea','g',42,['class':("input-xlarge"),'name':("valorDestino"),'cols':("40"),'rows':("3"),'maxlength':("255"),'required':(""),'value':(integracaoInstance?.valorDestino)],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1472671027833L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
