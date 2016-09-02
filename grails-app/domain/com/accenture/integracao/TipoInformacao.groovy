package com.accenture.integracao

class TipoInformacao {

    Date data
	String nome

    static mapping = {
        table "tbTipoInformacao"
        nome column: "Nome"
    }
    static constraints = {
    	nome nullable:false, blank:false, maxSize:50, unique:true
    }

    /**Devolve o nome do tipo para ser usado nos dominios que tiverem relacionamento e usarem o nome na combobox**/
    public String toString(){
    	return "${this.nome}"
    }
}
