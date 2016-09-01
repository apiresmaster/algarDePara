import com.accenture.integracao.Integracao
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_algarDePara_integracaoshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/integracao/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'integracao.label', default: 'Integracao'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',13,['code':("integracao.show.title"),'args':([entityName])],-1)
printHtmlPart(5)
if(true && (flash.message)) {
printHtmlPart(6)
expressionOut.print(flash.message)
printHtmlPart(7)
}
printHtmlPart(8)
if(true && (integracaoInstance?.sistemaOrigem)) {
printHtmlPart(9)
invokeTag('message','g',27,['code':("integracao.sistemaOrigem.label"),'default':("Sistema Origem")],-1)
printHtmlPart(10)
invokeTag('fieldValue','g',29,['bean':(integracaoInstance),'field':("sistemaOrigem")],-1)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (integracaoInstance?.tipoInformacao)) {
printHtmlPart(13)
invokeTag('message','g',36,['code':("integracao.tipoInformacao.label"),'default':("Tipo Informacao")],-1)
printHtmlPart(14)
createTagBody(3, {->
expressionOut.print(integracaoInstance?.tipoInformacao?.encodeAsHTML())
})
invokeTag('link','g',38,['controller':("tipoInformacao"),'action':("show"),'id':(integracaoInstance?.tipoInformacao?.id)],3)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (integracaoInstance?.valorOrigem)) {
printHtmlPart(15)
invokeTag('message','g',45,['code':("integracao.valorOrigem.label"),'default':("Valor Origem")],-1)
printHtmlPart(16)
invokeTag('fieldValue','g',47,['bean':(integracaoInstance),'field':("valorOrigem")],-1)
printHtmlPart(11)
}
printHtmlPart(12)
if(true && (integracaoInstance?.valorDestino)) {
printHtmlPart(17)
invokeTag('message','g',54,['code':("integracao.valorDestino.label"),'default':("Valor Destino")],-1)
printHtmlPart(18)
invokeTag('fieldValue','g',56,['bean':(integracaoInstance),'field':("valorDestino")],-1)
printHtmlPart(11)
}
printHtmlPart(19)
createTagBody(2, {->
printHtmlPart(20)
createTagBody(3, {->
invokeTag('message','g',66,['code':("default.button.edit.label"),'default':("Edit")],-1)
printHtmlPart(21)
})
invokeTag('link','g',67,['class':("btn btn-warning"),'action':("edit"),'resource':(integracaoInstance)],3)
printHtmlPart(22)
invokeTag('actionSubmit','g',69,['class':("btn btn-danger"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(23)
})
invokeTag('form','g',73,['url':([resource:integracaoInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(24)
})
invokeTag('captureBody','sitemesh',75,[:],1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1472678531101L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
