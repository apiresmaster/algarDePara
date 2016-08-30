
<%@ page import="com.accenture.integracao.TipoInformacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"
		

		<g:set var="entityName" value="${message(code: 'tipoInformacao.label', default: 'TipoInformacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tipoInformacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li>
					<g:link class="create" action="create"><g:message code="tipoInformacao.button.create" args="[entityName]" /></g:link>
				</li>
			</ul>
		</div>		
		<div id="list-tipoInformacao" class="content scaffold-list" role="main">
			<h1><g:message code="tipoInformacao.list.label" args="[entityName]" /></h1>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
		</div>
	</body>
</html>
