<%@ page import="com.accenture.integracao.TipoInformacao" %>



<div class="control-group">
	<label for="nome" class="control-label">
		<g:message code="tipoInformacao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div class="controls">
		<g:textField class="input-xlarge" name="nome" maxlength="50" required="" value="${tipoInformacaoInstance?.nome}"/>
	</div>
</div>

