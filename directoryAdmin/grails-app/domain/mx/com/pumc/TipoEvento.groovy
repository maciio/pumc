package mx.com.pumc

class TipoEvento {
    String nombre
    String descripcion

    static mapping = {
        table 'pumc_c_tipo_evento'
        id column: 'id_tipo_evento'
    }
    static constraints = {
    }

    String toString() {
        descripcion
    }
}
