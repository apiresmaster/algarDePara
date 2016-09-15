
<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="template">
		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'Tipo Informação')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
      <div class="page-header">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
      </div>
      <g:render template="form_msg_error"/>

	  	<panel>
	  		<g:link class="btn btn-success btn-lg" controller="tipoInformacao" action="create">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.button.new.label" args="[entityName]" />
  			</g:link>
	  	</panel>
	  	<br/>
	  	<br/>
			<table class="table table-bordered table-striped table-hover">
				<caption>Lista os Tipo de Informações mapeados.</caption>
				<thead>
					<tr class="info">
						<th>#</th>					
						<g:sortableColumn property="nome" title="${message(code: 'tipoInformacao.nome.label', default: 'Nome')}" />
						<th>Ações</th>
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${tipoInformacaoInstanceList}" status="i" var="tipoInformacaoInstance">
						<tr>
							<td>${fieldValue(bean: tipoInformacaoInstance, field: "id")}</td>

							<td><g:link action="edit" id="${tipoInformacaoInstance.id}">${fieldValue(bean: tipoInformacaoInstance, field: "nome")}</g:link>
							</td>
							<td>
								<!-- Button trigger modal -->
								<a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal" onclick="setaDadosModal('${tipoInformacaoInstance.id}')">
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
			      <g:form url="[resource:tipoInformacaoInstanceDelete, action:'delete']" method="DELETE">
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
			  			<g:link controller="tipoInformacao" params="[max:params.max,offset:(params.offset == null) ? 0 : Integer.parseInt(params.offset) - params.max]">
			  				${message(code: 'default.paginate.prev', default: 'Anterior')}
			  			</g:link>
			  		</li>

			  		<li ${tipoInformacaoInstanceList?.size() < params.max ? 'class=disabled' : ' '}>
			  			<g:link controller="tipoInformacao" params="[max:params.max,offset:(params.offset == null || params.offset == 0) ? params.max : Integer.parseInt(params.offset) + params.max]">
			  				${message(code: 'default.paginate.next', default: 'Próximo')}
			  			</g:link>
			  		</li>
				</ul>
			</nav>
		
	</body>
</html>
