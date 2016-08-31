<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
	    	<h2><g:message code="integracao.edit.title" args="[entityName]" /></h2>
		</div>

		<div id="edit-integracao" class="content scaffold-edit" role="main">
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${integracaoInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${integracaoInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</g:hasErrors>

			<g:form class="form-horizontal" url="[resource:integracaoInstance, action:'update']" method="PUT" >
				<fieldset>
					<g:hiddenField name="version" value="${integracaoInstance?.version}" />
					
					<g:render template="form"/>
				
					<div class="control-group">
						<div class="controls">				
							<g:actionSubmit class="btn btn-primary btn-lg active" role="button" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />

						</div>

					</div>	
				</fieldset>	
			</g:form>
		</div>
	</body>
</html>
