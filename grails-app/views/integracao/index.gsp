
<%@ page import="com.accenture.integracao.Integracao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'integracao.label', default: 'Integracao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="menu">
			<ul>
				<li>
					<g:link controller="tipoInformacao" action="index">Tipo Informação</g:link></li>
				<li>
					<g:link controller="integracao" action="index">Parametrizações</g:link></li>
				</li>
			</ul>
		</div>

		<a href="#list-integracao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li>
					<g:link class="create" action="create"><g:message code="integracao.button.create" args="[entityName]" /></g:link>
				</li>
			</ul>
		</div>
		<div id="list-integracao" class="content scaffold-list" role="main">
			<h1><g:message code="integracao.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
		</div>
	</body>
</html>
