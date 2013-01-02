package mx.com.pumc

class Seccion {
    String nombre
    String descripcion

    static mapping = {
        table 'pumc_c_seccion'
        id column: 'id_seccion'
    }

    static constraints = {}

    String toString() {
        descripcion
    }
}
