<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="page-header">
	    	<h2><g:message code="integracao.create.title" args="[entityName]" /></h2>
		</div>

		<div id="create-integracao" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${integracaoInstance}">
				<div class="alert alert-error">
					<ul class="errors" role="alert">
						<g:eachError bean="${integracaoInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><strong>Atenção: </strong><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
		</div>

			<g:form class="form-horizontal" url="[resource:integracaoInstance, action:'save']" >
				<fieldset>
					<g:render template="form"/>

					<div class="control-group">
						<div class="controls">
							<g:submitButton name="create" class="btn btn-primary btn-lg active" role="button" value="${message(code: 'integracao.button.save', default: 'Create')}" />
						</div>
					</div>	
				</fieldset>	
			</g:form>
		
	</body>
</html>
