package com.accenture.integracao

class TipoInformacao {

	String nome

    static mapping = {
        table "tbTipoInformacao"
        nome column: "Nome"

    }
    static constraints = {
    	nome nullable:false, blank:false, maxSize:50, unique:true
    }

    public String toString(){
    	return "${this.nome}";
    }
}
