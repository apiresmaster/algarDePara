import com.accenture.integracao.Integracao
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_algarDePara_integracaoindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/integracao/index.gsp" }
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
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
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
invokeTag('message','g',13,['code':("integracao.list.title"),'args':([entityName])],-1)
printHtmlPart(5)
createClosureForHtmlPart(6, 2)
invokeTag('link','g',20,['class':("btn btn-primary btn-lg active"),'role':("button"),'controller':("integracao"),'action':("create")],2)
printHtmlPart(7)
if(true && (flash.message)) {
printHtmlPart(8)
expressionOut.print(flash.message)
printHtmlPart(9)
}
printHtmlPart(10)
invokeTag('sortableColumn','g',36,['property':("sistemaOrigem"),'title':(message(code: 'integracao.sistemaOrigem.label', default: 'Sistema Origem'))],-1)
printHtmlPart(11)
invokeTag('message','g',38,['code':("integracao.tipoInformacao.label"),'default':("Tipo Informacao")],-1)
printHtmlPart(12)
invokeTag('sortableColumn','g',40,['property':("valorOrigem"),'title':(message(code: 'integracao.valorOrigem.label', default: 'Valor Origem'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',42,['property':("valorDestino"),'title':(message(code: 'integracao.valorDestino.label', default: 'Valor Destino'))],-1)
printHtmlPart(14)
loop:{
int i = 0
for( integracaoInstance in (integracaoInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: integracaoInstance, field: "sistemaOrigem"))
})
invokeTag('link','g',50,['action':("show"),'id':(integracaoInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: integracaoInstance, field: "tipoInformacao"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: integracaoInstance, field: "valorOrigem"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: integracaoInstance, field: "valorDestino"))
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
invokeTag('paginate','g',63,['total':(integracaoInstanceCount ?: 0)],-1)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',66,[:],1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1472675946026L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
