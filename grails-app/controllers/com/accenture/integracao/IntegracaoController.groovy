package com.accenture.integracao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class IntegracaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Integracao.list(params), model:[integracaoInstanceCount: Integracao.count()]
    }

    def show(Integracao integracaoInstance) {
        respond integracaoInstance
    }

    def create() {
        respond new Integracao(params)
    }

    @Transactional
    def save(Integracao integracaoInstance) {
        if (integracaoInstance == null) {
            notFound()
            return
        }

        if (integracaoInstance.hasErrors()) {
            respond integracaoInstance.errors, view:'create'
            return
        }

        integracaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'integracao.label', default: 'Integracao'), integracaoInstance.id])
                redirect integracaoInstance
            }
            '*' { respond integracaoInstance, [status: CREATED] }
        }
    }

    def edit(Integracao integracaoInstance) {
        respond integracaoInstance
    }

    @Transactional
    def update(Integracao integracaoInstance) {
        if (integracaoInstance == null) {
            notFound()
            return
        }

        if (integracaoInstance.hasErrors()) {
            respond integracaoInstance.errors, view:'edit'
            return
        }

        integracaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Integracao.label', default: 'Integracao'), integracaoInstance.id])
                redirect integracaoInstance
            }
            '*'{ respond integracaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Integracao integracaoInstance) {

        if (integracaoInstance == null) {
            notFound()
            return
        }

        integracaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Integracao.label', default: 'Integracao'), integracaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'integracao.label', default: 'Integracao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
