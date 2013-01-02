package mx.com.pumc

import mx.com.pumc.dominio.BaseAuditableEntity

class Persona extends BaseAuditableEntity implements Serializable {
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String edad
    String email
    String nacionalidad
    String procedencia
    String direccionParticular
    Long telOficina
    Short extensionOficina
    Long telMovil

    Ocupacion ocupacion
    Seccion seccion
    Lengua lengua
    Institucion institucion
    Evento evento

    //TODO Verificar Informacion con PUMC
    String medio
    String titulo
    String cargo

    static belongsTo = [directorio: Directorio]

    static mapping = {
        table 'pumc_t_persona'
        id column: 'id_persona'
        directorio column: 'id_directorio'
        ocupacion column: 'id_ocupacion', lazy: false
    }

    static constraints = {
        apellidoMaterno nullable: true, blank: true
        edad nullable: true, blank: true
        email nullable: true, blank: true
        nacionalidad nullable: true, blank: true
        direccionParticular nullable: true, blank: true
        telOficina nullable: true, blank: true
        extensionOficina nullable: true, blank: true
        telMovil nullable: true, blank: true
        ocupacion nullable: true, blank: true
        seccion nullable: true, blank: true
        medio nullable: true
        titulo nullable: true
        cargo nullable: true
        procedencia nullable: true
        lengua nullable: true
        institucion nullable: true
        evento nullable: true
    }
}
