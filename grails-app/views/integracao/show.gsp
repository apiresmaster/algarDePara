
<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<br/>

			<g:if test="${flash.message}">
				<div class="alert alert-success" role="alert">
				    <span class="glyphicon glyphicon glyphicon-ok" aria-hidden="true"></span>
				    <span class="sr-only">Teste:</span>
				    ${flash.message}
				</div>

			</g:if>
			
				<dl class="dl-horizontal">
				    <dt><g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" /></dt>
				    	<dd><g:link controller="sistemaOrigem" action="show" id="${integracaoInstance?.sistemaOrigem?.id}">${integracaoInstance?.sistemaOrigem?.encodeAsHTML()}</g:link></dd>
				    <dt><g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" /></dt>
				    	<dd><g:link controller="tipoInformacao" action="show" id="${integracaoInstance?.tipoInformacao?.id}">${integracaoInstance?.tipoInformacao?.encodeAsHTML()}</g:link></dd>
				    <dt><g:message code="integracao.valorOrigem.label" default="Valor Origem" /></dt>
				    	<dd><g:fieldValue bean="${integracaoInstance}" field="valorOrigem"/></dd>
				    <dt><g:message code="integracao.valorDestino.label" default="Valor Destino" /></dt>
				    	<dd><g:fieldValue bean="${integracaoInstance}" field="valorDestino"/></dd>
				</dl>
			
			<br/>

			<g:form url="[resource:integracaoInstance, action:'delete']" method="DELETE">
				<fieldset>
					<g:link class="btn btn-default btn-lg" action="edit" resource="${integracaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>

					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		
	</body>
</html>
