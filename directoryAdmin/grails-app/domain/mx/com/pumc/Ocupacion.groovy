package mx.com.pumc

class Ocupacion {

    String nombre
    String descripcion

    static mapping = {
        table 'pumc_c_ocupacion'
        id(column: 'id_ocupacion')
    }
    static constraints = {}

    String toString() {
        nombre + "-" + descripcion
    }

}
