
<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="menu">
			<ul>
				<li>
					<g:link controller="tipoInformacao" action="index">Tipo Informação</g:link></li>
				<li>
					<g:link controller="integracao" action="index">Parametrizações</g:link></li>
				</li>
			</ul>
		</div>

		<div id="show-integracao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list integracao">
			
				<g:if test="${integracaoInstance?.sistemaOrigem}">
				<li class="fieldcontain">
					<span id="sistemaOrigem-label" class="property-label"><g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" /></span>
					
						<span class="property-value" aria-labelledby="sistemaOrigem-label"><g:fieldValue bean="${integracaoInstance}" field="sistemaOrigem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${integracaoInstance?.tipoInformacao}">
				<li class="fieldcontain">
					<span id="tipoInformacao-label" class="property-label"><g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" /></span>
					
						<span class="property-value" aria-labelledby="tipoInformacao-label"><g:link controller="tipoInformacao" action="show" id="${integracaoInstance?.tipoInformacao?.id}">${integracaoInstance?.tipoInformacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${integracaoInstance?.valorOrigem}">
				<li class="fieldcontain">
					<span id="valorOrigem-label" class="property-label"><g:message code="integracao.valorOrigem.label" default="Valor Origem" /></span>
					
						<span class="property-value" aria-labelledby="valorOrigem-label"><g:fieldValue bean="${integracaoInstance}" field="valorOrigem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${integracaoInstance?.valorDestino}">
				<li class="fieldcontain">
					<span id="valorDestino-label" class="property-label"><g:message code="integracao.valorDestino.label" default="Valor Destino" /></span>
					
						<span class="property-value" aria-labelledby="valorDestino-label"><g:fieldValue bean="${integracaoInstance}" field="valorDestino"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:integracaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${integracaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
