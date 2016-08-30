package com.accenture.integracao

class Sistema {

	String nome

    static mapping = {
        table "tbSistema"
        nome column: "Nome"

    }
    static constraints = {
    	nome nullable:false, blank:false, maxSize:50, unique:true
    }

    public String toString(){
    	return "${this.nome}";
    }
}
