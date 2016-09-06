
<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
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
				<caption>Lista os Tipo de Informações mapeados.</caption>
				<thead>
					<tr class="info">
						<th>#</th>					
						<g:sortableColumn property="nome" title="${message(code: 'tipoInformacao.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${tipoInformacaoInstanceList}" status="i" var="tipoInformacaoInstance">
						<tr>
							<td>${fieldValue(bean: tipoInformacaoInstance, field: "id")}</td>

							<td><g:link action="show" id="${tipoInformacaoInstance.id}">${fieldValue(bean: tipoInformacaoInstance, field: "nome")}</g:link>
							</td>
						</tr>
					</g:each>
				</tbody>
			</table>
			<br/>
			<br/>
			<!-- /paginacao -->
			<nav aria-label="...">
				<ul class="pager pagination-lg">

			  		<li ${(params.offset == null || Integer.parseInt(params.offset) <= 0) ? 'class=disabled' : ' '}>
			  			<g:link controller="tipoInformacao" params="[max:params.max,offset:(params.offset == null) ? 0 : Integer.parseInt(params.offset) - params.max]">Anterior</g:link>
			  		</li>

			  		<li ${tipoInformacaoInstanceList?.size() < params.max ? 'class=disabled' : ' '}>
			  			<g:link controller="tipoInformacao" params="[max:params.max,offset:(params.offset == null || params.offset == 0) ? params.max : Integer.parseInt(params.offset) + params.max]">Próximo</g:link>
			  		</li>
				</ul>
			</nav>
		
	</body>
</html>
