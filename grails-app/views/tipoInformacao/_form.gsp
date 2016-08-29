<%@ page import="com.accenture.integracao.TipoInformacao" %>



<div class="fieldcontain ${hasErrors(bean: tipoInformacaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tipoInformacao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${tipoInformacaoInstance?.nome}"/>

</div>

