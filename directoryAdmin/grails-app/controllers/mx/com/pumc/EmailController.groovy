package mx.com.pumc

class EmailController {

    def index() {
        redirect(action: "show")
    }

    def show() {
        log.debug("## -->send")
    }

    def send() {
        log.debug("just before sending...")
        sendMail {
            to "${params.email}"
            subject "Test..."
            text "${params.comment}"
        }
        flash.message="Correo enviado"
        redirect(action: show())
    }
}
