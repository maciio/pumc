package mx.com.pumc

class Carrera {
    String nombre
    String descripcion
    static belongsTo = [institucion: Institucion]

    static mapping = {
        table 'pumc_c_carrera'
        id column: 'id_carrera'
    }
    static constraints = {
    }
}
