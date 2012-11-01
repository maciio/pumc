package mx.com.pumc

class Persona {
    String nombre
    String apellido
    String edad
    String email
    String nacionalidad
    String direccionParticular
    Long telOficina
    Short extOficina
    Long telMovil

    Ocupacion ocupacion

    static belongsTo = [directorio: Directorio]

    static mapping = {
        table 'pumc_t_persona'
        id column: 'id_persona'
        directorio column: 'id_directorio'
        ocupacion column: 'id_ocupacion', lazy: false
    }

    static constraints = {
        edad nullable: true, blank: true
        email nullable: true, blank: true
        nacionalidad nullable: true, blank: true
        direccionParticular nullable: true, blank: true
        telMovil nullable: true, blank: true
        extOficina nullable: true, blank: true
        telMovil nullable: true, blank: true
        ocupacion nullable: true, blank: true
    }
}
