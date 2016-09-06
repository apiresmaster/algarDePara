
<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="page-header">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>

      <g:if test="${flash.message}">
	      <div class="alert alert-danger" role="alert">
	        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
	        <span class="sr-only">Teste:</span>
	        Exclusão realizada com sucesso.
	      </div>
	  </g:if> 

			<table class="table table-bordered table-striped table-hover">
				<caption>Lista parametrizações mapeadas na integração.</caption>
				<thead>
					<tr class="info">
						
						<th>#</th>

						<th><g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" /></th>
					
						<th><g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" /></th>

						<g:sortableColumn property="valorOrigem" title="${message(code: 'integracao.valorOrigem.label', default: 'Valor Origem')}" />
					
						<g:sortableColumn property="valorDestino" title="${message(code: 'integracao.valorDestino.label', default: 'Valor Destino')}" />
					
				
					</tr>
				</thead>
				<tbody>
					<g:each in="${integracaoInstanceList}" status="i" var="integracaoInstance">
						<tr>
							<td>${fieldValue(bean: integracaoInstance, field: "id")}</td>

							<td><g:link action="show" id="${integracaoInstance.id}">${fieldValue(bean: integracaoInstance, field: "sistemaOrigem")}</g:link></td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "tipoInformacao")}</td>

							<td>${fieldValue(bean: integracaoInstance, field: "valorOrigem")}</td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "valorDestino")}</td>
						
						</tr>
					</g:each>
				</tbody>
			</table>
			<!-- /paginacao -->
			<nav aria-label="...">
				<ul class="pager">
			  		<li><a href="#">Anterior</a></li>
			  		<li><a href="#">Próximo</a></li>
				</ul>
			</nav>
			
			<div class="pagination">
				<g:paginate total="${integracaoInstanceCount ?: 0}" />
			</div>
		
	</body>
</html>
