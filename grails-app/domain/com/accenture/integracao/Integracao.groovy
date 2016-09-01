package com.accenture.integracao

class Integracao {

	SistemaOrigem sistemaOrigem
	TipoInformacao tipoInformacao
	String valorOrigem
	String valorDestino

    static mapping = {
        table "tbIntegracaoDePara"
        sistemaOrigem column: "SistemaOrigemId"
        tipoInformacao column: "TipoInformacaoId"
        valorOrigem column: "ValorOrigem"
        valorDestino column: "ValorDestino"

    }
    static constraints = {
    	sistemaOrigem nullable:false, blank:false, unique:['tipoInformacao','valorOrigem']
    	valorOrigem nullable:false, blank:false, maxSize:50
    	valorDestino nullable:false, blank:false, maxSize:255
    }
}
