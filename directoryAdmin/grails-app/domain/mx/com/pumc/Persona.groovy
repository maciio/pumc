package mx.com.pumc

import mx.com.pumc.dominio.BaseAuditableEntity

class Persona extends BaseAuditableEntity implements Serializable {
    String nombre
    String apellidos
    String edad
    String email
    String nacionalidad
    String procedencia
    String direccionParticular
    String telefono1
    String telefono2
    String cargo
    String titulo

    //TODO Verificar Informacion con PUMC
    String medio //

    Ocupacion ocupacion //(actividad) estudiante, empleado, investigador, docente
    Seccion seccion // cultura, sociales, spectaculos, ciencia, politica
    Lengua lengua   //espanol, ingles, frances, nahuatl
    Institucion institucion  //escuela de la unam  (se incluyen direcciones)
    Evento evento //presentacion, diplomado, conferencia, taller

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
        telefono1 nullable: true, blank: true
        telefono2 nullable: true, blank: true
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

    String toString() {
        nombre + " " + apellidos
    }

}
