package mx.com.pumc

class Lengua {
    String nombre
    String descripcion

    static mapping = {
        table 'pumc_c_lengua'
        id column: 'id_lengua'
    }
    static constraints = {
    }

    String toString(){
        descripcion
    }
}
