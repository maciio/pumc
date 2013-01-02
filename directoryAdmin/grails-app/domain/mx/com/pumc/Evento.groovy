package mx.com.pumc

class Evento {
    String nombre
    String descripcion
    TipoEvento tipoEvento
    String direccion
    Date fechaEvento

    static mapping = {
        table 'pumc_c_evento'
        id column: 'id_evento'
        tipoEvento column: 'id_tipo_evento', lazy: false
    }
    static constraints = {
        direccion nullable: true
    }
}
