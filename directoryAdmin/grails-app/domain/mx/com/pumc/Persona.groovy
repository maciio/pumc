package mx.com.pumc

class Persona {
    String nombre
    String apellido
    String email
    String nacionalidad
    String direccionParticular
    Long telOficina
    Short extOficina
    Long telMovil

    Ocupacion ocupacion

    static mapping = {
        id(column: 'id_persona')

    }
    static constraints = {
        nacionalidad(nullable: true, blank: true)
        direccionParticular(nullable: true, blank: true)
        telMovil(nullable: true, blank: true)
        extOficina(nullable: true, blank: true)
        telMovil(nullable: true, blank: true)
    }
}
