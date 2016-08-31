
<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div class="page-header">
	    	<h2><g:message code="integracao.show.title" args="[entityName]" /></h2>
		</div>

		<div id="show-integracao" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
				<div class="alert alert-success">
					<div class="message" role="status">${flash.message}</div>
				</div>
			</g:if>
			<ol class="unstyled">
			
				<g:if test="${integracaoInstance?.sistemaOrigem}">
				<li>
					
					<span class="lead" id="sistemaOrigem-label"><strong><g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" /></strong></span>
					
						<span class="lead" aria-labelledby="sistemaOrigem-label"><g:fieldValue bean="${integracaoInstance}" field="sistemaOrigem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${integracaoInstance?.tipoInformacao}">
				<li>
					<span class="lead" id="tipoInformacao-label"><strong><g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" /></strong></span>
					
						<span class="lead" aria-labelledby="tipoInformacao-label"><g:link controller="tipoInformacao" action="show" id="${integracaoInstance?.tipoInformacao?.id}">${integracaoInstance?.tipoInformacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${integracaoInstance?.valorOrigem}">
				<li>
					<span class="lead" id="valorOrigem-label" ><strong><g:message code="integracao.valorOrigem.label" default="Valor Origem" /><strong></span>
					
						<span class="lead" aria-labelledby="valorOrigem-label"><g:fieldValue bean="${integracaoInstance}" field="valorOrigem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${integracaoInstance?.valorDestino}">
				<li>
					<span class="lead" id="valorDestino-label" ><strong><g:message code="integracao.valorDestino.label" default="Valor Destino" /></strong></span>
					
						<span class="lead" aria-labelledby="valorDestino-label"><g:fieldValue bean="${integracaoInstance}" field="valorDestino"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:integracaoInstance, action:'delete']" method="DELETE">
				<fieldset>
					<div class="control-group">
						<div class="controls">					
							<g:link class="btn btn-warning" action="edit" resource="${integracaoInstance}"><g:message code="default.button.edit.label" default="Edit" />
							</g:link>

							<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
