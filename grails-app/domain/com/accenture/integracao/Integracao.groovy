package com.accenture.integracao

class Integracao {

	String sistemaOrigem
	String tipoInformacao
	String valorOrigem
	String valorDestino

    static mapping = {
        table "tbIntegracaoDePara"
        sistemaOrigem column: "SistemaOrigem"
        tipoInformacao column: "TipoInformacao"
        valorOrigem column: "ValorOrigem"
        valorDestino column: "ValorDestino"

    }
    static constraints = {
    	sistemaOrigem nullable:false, blank:false, maxSize:50, unique:['tipoInformacao','valorOrigem']
    	tipoInformacao nullable:false, blank:false, maxSize:50
    	valorOrigem nullable:false, blank:false, maxSize:50
    	valorDestino nullable:false, blank:false, maxSize:255
    }
}
