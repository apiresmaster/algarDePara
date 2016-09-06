<%@ page import="com.accenture.integracao.TipoInformacao" %>

<div class="form-group">
  <label for="nome" class="col-sm-2 control-label">
  	<g:message code="tipoInformacao.nome.label" default="Nome" />
  </label>
  <div class="col-sm-10">
    <g:textField name="nome" maxlength="50" class="form-control" id="nome" placeholder="nome do Tipo Informação" value="${tipoInformacaoInstance?.nome}"/>
    <span id="helpBlock" class="help-block">Informe o nome do Tipo de Informação que será incluso.</span>
  </div>
</div>