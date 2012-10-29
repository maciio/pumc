import mx.com.pumc.Ocupacion

class BootStrap {

    def init = { servletContext ->
        def ocp1 = new Ocupacion(
                        nombre: "Estudiante",
                        descripcion: "Estudiante"
        )
        def ocp2 = new Ocupacion(
                        nombre: "Docente",
                        descripcion: "Docente"
        )
        def ocp3 = new Ocupacion(
                        nombre: "Director",
                        descripcion: "Director"
        )
        def ocp4 = new Ocupacion(
                        nombre: "Empleado",
                        descripcion: "Empleado"
        )
        ocp1.save(failOnError: true)
        ocp2.save(failOnError: true)
        ocp3.save(failOnError: true)
        ocp4.save(failOnError: true)

    }
    def destroy = {
    }
}
