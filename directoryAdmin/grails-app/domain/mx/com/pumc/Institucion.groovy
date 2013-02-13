package mx.com.pumc

class Institucion {

    String nombre
    String descripcion
    String direccion

    static hasMany = [carreras: Carrera]

    static mapping = {
        table 'pumc_c_institucion'
        id column: 'id_institucion'
    }
    static constraints = {
        direccion size: 0..500
        carreras nullable: true
    }

    String toString() {
        nombre
    }
}
