package com.accenture.integracao

class Integracao {

	String sistemaOrigem
	String valorOrigem
	String valorDestino
    TipoInformacao tipoInformacao

    static mapping = {
        table "tbIntegracaoDePara"
        sistemaOrigem column: "SistemaOrigem"
        valorOrigem column: "ValorOrigem"
        valorDestino column: "ValorDestino"
        tipoInformacao column: "TipoInformacaoId"

    }
    static constraints = {
    	sistemaOrigem nullable:false, blank:false, maxSize:50, unique:['tipoInformacao','valorOrigem']
    	tipoInformacao nullable:false, blank:false
    	valorOrigem nullable:false, blank:false, maxSize:50
    	valorDestino nullable:false, blank:false, maxSize:255
    }
}
