<%@ page import="com.accenture.integracao.Integracao" %>



<div class="control-group">
	<label for="sistemaOrigem" class="control-label">
		<g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" />
		
	</label>
	<div class="controls">
		<g:select class="input-xlarge" id="sistemaOrigem" name="sistemaOrigem.id" from="${com.accenture.integracao.Sistema.list()}" optionKey="id" required="" value="${integracaoInstance?.sistemaOrigem?.id}"/>
	</div>

</div>

<div class="control-group">
	<label for="tipoInformacao" class="control-label">
		<g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" />
		
	</label>
	<div class="controls">
		<g:select class="input-xlarge" id="tipoInformacao" name="tipoInformacao.id" from="${com.accenture.integracao.TipoInformacao.list()}" optionKey="id" required="" value="${integracaoInstance?.tipoInformacao?.id}"/>
	</div>
</div>

<div class="control-group">
	<label for="valorOrigem" class="control-label">
		<g:message code="integracao.valorOrigem.label" default="Valor Origem" />
		
	</label>
	<div class="controls">
		<g:textField class="input-xlarge" name="valorOrigem" maxlength="50" required="" value="${integracaoInstance?.valorOrigem}"/>
	</div>
</div>

<div class="control-group">
	<label for="valorDestino" class="control-label">
		<g:message code="integracao.valorDestino.label" default="Valor Destino" />

	</label>
	<div class="controls">
		<g:textArea class="input-xlarge" name="valorDestino" cols="40" rows="3" maxlength="255" required="" value="${integracaoInstance?.valorDestino}"/>
	</div>
</div>

