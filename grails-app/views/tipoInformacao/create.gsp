<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
			<div class="page-header">
				<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			</div>
			<br/>

			<g:render template="form_msg_error"/>

			<g:form class="form-horizontal" url="[resource:tipoInformacaoInstance, action:'save']" >
				<fieldset>
					
					<g:render template="form"/>
					<br/>
					<br/>
					<br/>
					<div class="form-group">
					  <div class="col-sm-offset-2 col-sm-10">
					    <button name="create" class="btn btn-primary btn-lg">
					      <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> ${message(code: 'default.button.create.label', default: 'Create')}
					    </button>
					    <g:link class="btn btn-default btn-lg" controller="tipoInformacao" action="index"> Cancelar</g:link>

					  </div>
					</div>

				</fieldset>
			</g:form>
		
	</body>
</html>
