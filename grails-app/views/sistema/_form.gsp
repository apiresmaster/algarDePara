<%@ page import="com.accenture.integracao.Sistema" %>



<div class="fieldcontain ${hasErrors(bean: sistemaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="sistema.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${sistemaInstance?.nome}"/>

</div>

