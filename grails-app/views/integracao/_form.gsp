<%@ page import="com.accenture.integracao.Integracao" %>

<div class="form-group">
	<label for="sistemaOrigem" class="col-sm-2 control-label">
		<g:message code="integracao.sistemaOrigem.label" default="Sistema Origem" />
	</label>
	<div class="col-sm-10">
		<g:select class="form-control" id="sistemaOrigem" name="sistemaOrigem.id" from="${com.accenture.integracao.SistemaOrigem.list()}" optionKey="id" value="${integracaoInstance?.sistemaOrigem?.id}"/>
	</div>
</div>

<div class="form-group">
	<label for="tipoInformacao" class="col-sm-2 control-label">
		<g:message code="integracao.tipoInformacao.label" default="Tipo Informacao" />
		
	</label>
	<div class="col-sm-10">	
		<g:select class="form-control" id="tipoInformacao" name="tipoInformacao.id" from="${com.accenture.integracao.TipoInformacao.list()}" optionKey="id" value="${integracaoInstance?.tipoInformacao?.id}"/>
	</div>
</div>

<div class="form-group">
	<label for="valorOrigem" class="col-sm-2 control-label">
		<g:message code="integracao.valorOrigem.label" default="Valor Origem" />
		
	</label>
	<div class="col-sm-10">
		<g:textField  class="form-control" name="valorOrigem" maxlength="50" value="${integracaoInstance?.valorOrigem}"/>
	</div>
</div>

<div class="form-group">
	<label for="valorDestino" class="col-sm-2 control-label">
		<g:message code="integracao.valorDestino.label" default="Valor Destino" />
		
	</label>
	<div class="col-sm-10">
		<g:textArea class="form-control" name="valorDestino" cols="40" rows="5" maxlength="255" value="${integracaoInstance?.valorDestino}"/>
	</div>
</div>