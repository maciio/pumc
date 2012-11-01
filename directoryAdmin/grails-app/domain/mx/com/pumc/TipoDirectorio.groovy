package mx.com.pumc

class TipoDirectorio {
    String nombre
    String descripcion

    static mapping = {
        table 'pumc_c_tipo_directorio'
        id column:'id_tipo_directorio'
    }

    static constraints = {
    }
}
