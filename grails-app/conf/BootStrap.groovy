class BootStrap {

    def init = { servletContext ->
        
        new com.accenture.integracao.SistemaOrigem(nome:'Oracle').save()
        new com.accenture.integracao.SistemaOrigem(nome:'Agrione').save()
        new com.accenture.integracao.SistemaOrigem(nome:'Teste1').save()
        new com.accenture.integracao.SistemaOrigem(nome:'Sistema 2').save()
        new com.accenture.integracao.SistemaOrigem(nome:'Sistema 3').save()


        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao1').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao2').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao3').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao4').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao5').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao6').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao7').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao8').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao9').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao10').save()
        new com.accenture.integracao.TipoInformacao(nome:'TipoInformacao11').save()
    }
    def destroy = {
    }
}
