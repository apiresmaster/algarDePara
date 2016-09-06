<%@ page import="com.accenture.integracao.TipoInformacao" %>

<g:if test="${flash.message}">
	<div class="alert alert-success" role="alert">
		<span class="glyphicon glyphicon glyphicon-ok" aria-hidden="true"></span>
		<span class="sr-only">Teste:</span>
		${flash.message}
		</div>
	<!--div class="message" role="status">${flash.message}</div-->
</g:if>

<g:hasErrors bean="${integracaoInstance}">
	<div class="alert alert-danger" role="alert">
		<g:eachError bean="${integracaoInstance}" var="error">
			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
			<span class="sr-only">Teste:</span>
			<g:if test="${error in org.springframework.validation.FieldError}"></g:if><g:message error="${error}"/><br/>
		</g:eachError>
	</div>

</g:hasErrors>