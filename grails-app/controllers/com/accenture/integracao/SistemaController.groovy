package com.accenture.integracao



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SistemaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sistema.list(params), model:[sistemaInstanceCount: Sistema.count()]
    }

    def show(Sistema sistemaInstance) {
        respond sistemaInstance
    }

    def create() {
        respond new Sistema(params)
    }

    @Transactional
    def save(Sistema sistemaInstance) {
        if (sistemaInstance == null) {
            notFound()
            return
        }

        if (sistemaInstance.hasErrors()) {
            respond sistemaInstance.errors, view:'create'
            return
        }

        sistemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sistema.label', default: 'Sistema'), sistemaInstance.id])
                redirect sistemaInstance
            }
            '*' { respond sistemaInstance, [status: CREATED] }
        }
    }

    def edit(Sistema sistemaInstance) {
        respond sistemaInstance
    }

    @Transactional
    def update(Sistema sistemaInstance) {
        if (sistemaInstance == null) {
            notFound()
            return
        }

        if (sistemaInstance.hasErrors()) {
            respond sistemaInstance.errors, view:'edit'
            return
        }

        sistemaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sistema.label', default: 'Sistema'), sistemaInstance.id])
                redirect sistemaInstance
            }
            '*'{ respond sistemaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sistema sistemaInstance) {

        if (sistemaInstance == null) {
            notFound()
            return
        }

        sistemaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sistema.label', default: 'Sistema'), sistemaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sistema.label', default: 'Sistema'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
