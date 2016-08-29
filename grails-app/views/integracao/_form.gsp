<%@ page import="com.accenture.integracao.Integracao" %>



<div class="fieldcontain ${hasErrors(bean: integracaoInstance, field: 'sistemaOrigem', 'error')} required">
	<label for="sistemaOrigem">
		<g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sistemaOrigem" maxlength="50" required="" value="${integracaoInstance?.sistemaOrigem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: integracaoInstance, field: 'tipoInformacao', 'error')} required">
	<label for="tipoInformacao">
		<g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoInformacao" name="tipoInformacao.id" from="${com.accenture.integracao.TipoInformacao.list()}" optionKey="id" required="" value="${integracaoInstance?.tipoInformacao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: integracaoInstance, field: 'valorOrigem', 'error')} required">
	<label for="valorOrigem">
		<g:message code="integracao.valorOrigem.label" default="Valor Origem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="valorOrigem" maxlength="50" required="" value="${integracaoInstance?.valorOrigem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: integracaoInstance, field: 'valorDestino', 'error')} required">
	<label for="valorDestino">
		<g:message code="integracao.valorDestino.label" default="Valor Destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="valorDestino" cols="40" rows="5" maxlength="255" required="" value="${integracaoInstance?.valorDestino}"/>

</div>

