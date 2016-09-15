
<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<br/>

		<div id="show-tipoInformacao" class="content scaffold-show" role="main">
			
			<g:if test="${flash.message}">
			<!--div class="message" role="status">${flash.message}</div-->
				<div class="alert alert-success" role="alert">
				    <span class="glyphicon glyphicon glyphicon-ok" aria-hidden="true"></span>
				    <span class="sr-only">Teste:</span>
				    ${flash.message}
				</div>

			</g:if>
			
				<dl class="dl-horizontal">
				    <dt><g:message code="tipoInformacao.nome.label" default="Nome" /></dt>
				    	<dd><g:fieldValue bean="${tipoInformacaoInstance}" field="nome"/></dd>
				</dl>
			<br/>
			<br/>
			<g:form url="[resource:tipoInformacaoInstance, action:'delete']" method="DELETE">
			  		<g:link class="btn btn-success btn-lg" controller="tipoInformacao" action="create">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.button.new.label" args="[entityName]" />
		  			</g:link>

				    <g:link class="btn btn-default btn-lg" action="edit" resource="${tipoInformacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>

				    <g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />				
			</g:form>
		</div>
	</body>
</html>
