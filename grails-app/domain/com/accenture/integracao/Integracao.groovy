package com.accenture.integracao

class Integracao {

	String sistemaOrigem
	TipoInformacao tipoInformacao
	String valorOrigem
	String valorDestino

    static mapping = {
        table "tbIntegracaoDePara"
        sistemaOrigem column: "SistemaOrigem"
        tipoInformacao column: "TipoInformacaoId"
        valorOrigem column: "ValorOrigem"
        valorDestino column: "ValorDestino"

    }
    static constraints = {
    	sistemaOrigem nullable:false, blank:false, maxSize:255, unique:['tipoInformacao','valorOrigem']
    	valorOrigem nullable:false, blank:false, maxSize:255
    	valorDestino nullable:false, blank:false, maxSize:255
    }
}
