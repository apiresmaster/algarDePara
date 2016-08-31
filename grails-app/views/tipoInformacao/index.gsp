
<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="page-header">
	    	<h2><g:message code="tipoInformacao.list.title" args="[entityName]" /></h2>
		</div>

			<div class="panel panel-default">
				<div class="panel-body">
					<p>Clique no botão abaixo para adicionar um Tipo de Informação.</p>
					
					<p><g:link class="btn btn-primary btn-lg active" role="button" controller="tipoInformacao" action="create">Adicionar Parametrização</g:link></p>
				</div>
			</div>

		<br/><br/>
		<!-- Tables
		================================================== -->
		<section id="tables">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

		  	<table class="table table-bordered table-striped table-hover">
		    	<thead>
		      		<tr>
						<g:sortableColumn property="nome" title="${message(code: 'tipoInformacao.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${tipoInformacaoInstanceList}" status="i" var="tipoInformacaoInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
							<td><g:link action="show" id="${tipoInformacaoInstance.id}">${fieldValue(bean: tipoInformacaoInstance, field: "nome")}</g:link></td>
					
						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoInformacaoInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
