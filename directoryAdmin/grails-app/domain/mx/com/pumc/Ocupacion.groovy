package mx.com.pumc

class Ocupacion {

    String nombre
    String descripcion

    enum OcupacionEnum {
        ESTUDIANTE("Estudiante"),
        INVESTIGADOR("Investigador"),
        DOCENTE("Docente"),
        EMPLEADO("Empleado")

        final String value

        OcupacionEnum(String value) {
            this.value = value
        }

        String toString() {
            value
        }

        static list() {
            [ESTUDIANTE, INVESTIGADOR, DOCENTE, EMPLEADO]
        }

    }

    static mapping = {
        table 'pumc_c_ocupacion'
        id(column: 'id_ocupacion')
    }
    static constraints = {

    }

    String toString() {
        descripcion
    }

}
