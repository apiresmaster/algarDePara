
<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="page-header">
	    	<h2><g:message code="integracao.list.title" args="[entityName]" /></h2>
		</div>

			<div class="panel panel-default">
				<div class="panel-body">
					<p>Clique no botão abaixo para adicionar uma nova parametrização.</p>
					
					<p><g:link class="btn btn-primary btn-lg active" role="button" controller="integracao" action="create">Adicionar Parametrização</g:link></p>
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
						<g:sortableColumn property="sistemaOrigem" title="${message(code: 'integracao.sistemaOrigem.label', default: 'Sistema Origem')}" />
					
						<th><g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" /></th>
					
						<g:sortableColumn property="valorOrigem" title="${message(code: 'integracao.valorOrigem.label', default: 'Valor Origem')}" />
					
						<g:sortableColumn property="valorDestino" title="${message(code: 'integracao.valorDestino.label', default: 'Valor Destino')}" />

					</tr>
				</thead>
				<tbody>
					<g:each in="${integracaoInstanceList}" status="i" var="integracaoInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${integracaoInstance.id}">${fieldValue(bean: integracaoInstance, field: "sistemaOrigem")}</g:link></td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "tipoInformacao")}</td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "valorOrigem")}</td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "valorDestino")}</td>

						</tr>
					</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${integracaoInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
