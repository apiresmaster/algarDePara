package com.accenture.integracao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoInformacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoInformacao.list(params), model:[tipoInformacaoInstanceCount: TipoInformacao.count()]
    }

    def show(TipoInformacao tipoInformacaoInstance) {
        respond tipoInformacaoInstance
    }

    def create() {
        respond new TipoInformacao(params)
    }

    @Transactional
    def save(TipoInformacao tipoInformacaoInstance) {
        if (tipoInformacaoInstance == null) {
            notFound()
            return
        }

        if (tipoInformacaoInstance.hasErrors()) {
            respond tipoInformacaoInstance.errors, view:'create'
            return
        }

        tipoInformacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoInformacao.label', default: 'TipoInformacao'), tipoInformacaoInstance.id])
                redirect tipoInformacaoInstance
            }
            '*' { respond tipoInformacaoInstance, [status: CREATED] }
        }
    }

    def edit(TipoInformacao tipoInformacaoInstance) {
        respond tipoInformacaoInstance
    }

    @Transactional
    def update(TipoInformacao tipoInformacaoInstance) {
        if (tipoInformacaoInstance == null) {
            notFound()
            return
        }

        if (tipoInformacaoInstance.hasErrors()) {
            respond tipoInformacaoInstance.errors, view:'edit'
            return
        }

        tipoInformacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoInformacao.label', default: 'TipoInformacao'), tipoInformacaoInstance.id])
                redirect tipoInformacaoInstance
            }
            '*'{ respond tipoInformacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoInformacao tipoInformacaoInstance) {

        if (tipoInformacaoInstance == null) {
            notFound()
            return
        }

        tipoInformacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoInformacao.label', default: 'TipoInformacao'), tipoInformacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoInformacao.label', default: 'TipoInformacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
