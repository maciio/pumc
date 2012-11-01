import mx.com.pumc.Ocupacion
import mx.com.pumc.TipoDirectorio
import mx.com.pumc.Directorio

class BootStrap {

    def init = { servletContext ->
        def ocp1 = new Ocupacion(
                        id: 1L,
                        nombre: "Estudiante",
                        descripcion: "Estudiante"
        )
        def ocp2 = new Ocupacion(
                        id: 2L,
                        nombre: "Docente",
                        descripcion: "Docente"
        )
        def ocp3 = new Ocupacion(
                        id: 3L,
                        nombre: "Director",
                        descripcion: "Director"
        )
        def ocp4 = new Ocupacion(
                        id: 4L,
                        nombre: "Empleado",
                        descripcion: "Empleado"
        )
        ocp1.save()
        ocp2.save()
        ocp3.save()
        ocp4.save()

        def d1 = new Directorio(
                        id: 1L,
                        nombre: "Prensa",
                        descripcion: "Directorio de Prensa"
        )

        def d2 = new Directorio(
                        id: 2L,
                        nombre: "PUMC",
                        descripcion: "Directorio PUMC"
        )

        def d3 = new Directorio(
                        id: 3L,
                        nombre: "Becarios",
                        descripcion: "Directorio de Prensa"
        )

        def d4 = new Directorio(
                        id: 4L,
                        nombre: "Asistentes",
                        descripcion: "Directorio de Asistentes"
        )
        def d5 = new Directorio(
                        id: 5L,
                        nombre: "Autoridades",
                        descripcion: "Directorio de Autoridades"
        )
        def d6 = new Directorio(
                        id: 6L,
                        nombre: "Invitados",
                        descripcion: "Directorio de Invitados"
        )
        def d7 = new Directorio(
                        id: 7L,
                        nombre: "Externos",
                        descripcion: "Directorio de Externos"
        )
        d1.save()
        d2.save()
        d3.save()
        d4.save()
        d5.save()
        d6.save()
        d7.save()
    }

    def destroy = {

    }
}
