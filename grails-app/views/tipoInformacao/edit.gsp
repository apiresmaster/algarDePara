<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
		</div>
		<br/>

		<g:render template="form_msg_error"/>

			<g:form class="form-horizontal" url="[resource:tipoInformacaoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${tipoInformacaoInstance?.version}" />
				<fieldset>
					
					<g:render template="form"/>
					
					<br/>
					<br/>
					<br/>
				
					<div class="form-group">
					  	<div class="col-sm-offset-2 col-sm-10">
					    	<button name="edit" action="update" class="btn btn-primary btn-lg">
					    		<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> ${message(code: 'default.button.update.label', default: 'Update')}
					    	</button>
					    	<g:link class="btn btn-default btn-lg" controller="tipoInformacao" action="index"> Cancelar</g:link>
						</div>
					</div>

				</fieldset>
			</g:form>
		</div>
	</body>
</html>
