<%@ page import="com.accenture.integracao.TipoInformacao" %>



<div class="fieldcontain ${hasErrors(bean: tipoInformacaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tipoInformacao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${tipoInformacaoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tipoInformacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="tipoInformacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${tipoInformacaoInstance?.data}"  />

</div>

