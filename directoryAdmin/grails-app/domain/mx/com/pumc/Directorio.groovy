package mx.com.pumc

class Directorio {

    String nombre
    String descripcion

    // TipoDirectorio tipoDirectorio

    static hasMany = [personas: Persona]

    static mapping = {
        table 'pumc_c_directorio'
        id column: 'id_directorio'
        //tipoDirectorio column: 'id_tipo_directorio', lazy: false
    }

    static constraints = {
        personas nullable: true
    }
    String toString() {
        descripcion
    }
}
