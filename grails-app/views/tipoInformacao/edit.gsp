<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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

		<div id="edit-tipoInformacao" class="content scaffold-edit" role="main">
			<h1><g:message code="tipoInformacao.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${tipoInformacaoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${tipoInformacaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:tipoInformacaoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${tipoInformacaoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
