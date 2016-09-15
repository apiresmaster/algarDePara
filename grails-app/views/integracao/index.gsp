
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
	  	<panel>
	  		<g:link class="btn btn-success btn-lg" controller="Integracao" action="create">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.button.new.label" args="[entityName]" />
  			</g:link>
	  	</panel>
	  	<br/>
	  	<br/>
			<table class="table table-bordered table-striped table-hover">
				<caption>Lista parametrizações mapeadas na integração.</caption>
				<thead>
					<tr class="info">
						
						<th>#</th>

						<th><g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" /></th>
					
						<th><g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" /></th>

						<g:sortableColumn property="valorOrigem" title="${message(code: 'integracao.valorOrigem.label', default: 'Valor Origem')}" />
					
						<g:sortableColumn property="valorDestino" title="${message(code: 'integracao.valorDestino.label', default: 'Valor Destino')}" />
					
						<th>Ações</th>
				
					</tr>
				</thead>
				<tbody>
					<g:each in="${integracaoInstanceList}" status="i" var="integracaoInstance">
						<tr>
							<td>${fieldValue(bean: integracaoInstance, field: "id")}</td>

							<td><g:link action="edit" id="${integracaoInstance.id}">${fieldValue(bean: integracaoInstance, field: "sistemaOrigem")}</g:link></td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "tipoInformacao")}</td>

							<td>${fieldValue(bean: integracaoInstance, field: "valorOrigem")}</td>
						
							<td>${fieldValue(bean: integracaoInstance, field: "valorDestino")}</td>

							<td>
								<!-- Button trigger modal -->
								<a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal" onclick="setaDadosModal('${integracaoInstance.id}')">
			  						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Excluir
								</a>
							</td>							
						
						</tr>
					</g:each>
				</tbody>
			</table>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">Excluir Registro</h4>
			      </div>
			      <g:form url="[resource:integracaoInstanceDelete, action:'delete']" method="DELETE">
				      <div class="modal-body">
				        <g:hiddenField name="id"/>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

					    <button name="create" class="btn btn-danger btn-lg">
					      <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
					      <g:message code="default.button.delete.label" args="[entityName]" />
					    </button>

				      </div>
				    </g:form>
			    </div>
			  </div>
			</div>			
			<br/>
			<br/>
			<!-- /paginacao -->
			<nav aria-label="...">
				<ul class="pager pagination-lg">

			  		<li ${(params.offset == null || Integer.parseInt(params.offset) <= 0) ? 'class=disabled' : ' '}>
			  			<g:link controller="integracao" params="[max:params.max,offset:(params.offset == null) ? 0 : Integer.parseInt(params.offset) - params.max]">Anterior</g:link>
			  		</li>

			  		<li ${integracaoInstanceList?.size() < params.max ? 'class=disabled' : ' '}>
			  			<g:link controller="tipoInformacao" params="[max:params.max,offset:(params.offset == null || params.offset == 0) ? params.max : Integer.parseInt(params.offset) + params.max]">Próximo</g:link>
			  		</li>
				</ul>
			</nav>
	</body>
</html>
