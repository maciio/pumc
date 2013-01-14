import mx.com.pumc.Institucion
import mx.com.pumc.Ocupacion
import mx.com.pumc.TipoDirectorio
import mx.com.pumc.Directorio

class BootStrap {

    def init = { servletContext ->
        //--
        def ocp1 = new Ocupacion(
                id: 1L,
                nombre: "Estudiante",
                descripcion: "Estudiante"
        ).save()
        def ocp2 = new Ocupacion(
                id: 2L,
                nombre: "Docente",
                descripcion: "Docente"
        ).save()
        def ocp3 = new Ocupacion(
                id: 3L,
                nombre: "Director",
                descripcion: "Director"
        ).save()
        def ocp4 = new Ocupacion(
                id: 4L,
                nombre: "Empleado",
                descripcion: "Empleado"
        ).save()

        //--Directorios de prueba--
        def d1 = new Directorio(
                id: 1L,
                nombre: "Prensa",
                descripcion: "Directorio de Prensa"
        ).save()
        def d2 = new Directorio(
                id: 2L,
                nombre: "PUMC",
                descripcion: "Directorio PUMC"
        ).save()
        def d3 = new Directorio(
                id: 3L,
                nombre: "Becarios",
                descripcion: "Directorio de Prensa"
        ).save()
        def d4 = new Directorio(
                id: 4L,
                nombre: "Asistentes",
                descripcion: "Directorio de Asistentes"
        ).save()
        def d5 = new Directorio(
                id: 5L,
                nombre: "Autoridades",
                descripcion: "Directorio de Autoridades"
        ).save()
        def d6 = new Directorio(
                id: 6L,
                nombre: "Invitados",
                descripcion: "Directorio de Invitados"
        ).save()
        def d7 = new Directorio(
                id: 7L,
                nombre: "Externos",
                descripcion: "Directorio de Externos"
        )

        def inst1 = new Institucion(
                id: 1L,
                nombre: "Escuela Nacional Preparatoria. Plantel 8 \"Miguel E. Schultz\"",
                descripcion: "Escuela Nacional Preparatoria. Plantel 8 \"Miguel E. Schultz\"",
                direccion: "Av. Lomas de Plateros sin número, esquina Francisco P. Miranda. " +
                        "Álvaro Obregón, Colonia Merced Gómez, C.P. 1600,  México, D.F."

        ).save()
        def inst2 = new Institucion(
                id: 2L,
                nombre: "Escuela Nacional Preparatoria. Plantel 9 \"Pedro de Alba\"",
                descripcion: "Escuela Nacional Preparatoria. Plantel 9 \"Pedro de Alba\"",
                direccion: "Insurgentes Norte # 1698, Col. Lindavista, Azcapotzalco, C.P. 07300, México, D.F."
        ).save()
        def inst3 = new Institucion(
                id: 3L,
                nombre: "Facultad de Arquitectura",
                descripcion: "Facultad de Arquitectura",
                direccion: "Circuito Interior Ciudad Universitaria,  Coyoacán, C.P. 4510, México, D.F."
        ).save()
        def inst4 = new Institucion(
                id: 4L,
                nombre: "Facultad de Ciencias Políticas y Sociales",
                descripcion: "Facultad de Ciencias Políticas y Sociales",
                direccion: "Circuito Interior Ciudad Universitaria,  Coyoacán, C.P. 4510, México, D.F."
        ).save()
        def inst5 = new Institucion(
                id: 5L,
                nombre: "Facultad de Contaduría y Administración",
                descripcion: "Facultad de Contaduría y Administración",
                direccion: "Circuito Exterior,  Ciudad Universitaria, Coyoacán, C.P. 4510, México, D.F."
        ).save()
        def inst6 = new Institucion(
                id: 6L,
                nombre: "Facultad de Derecho",
                descripcion: "Facultad de Derecho",
                direccion: "Edif. Principal. Circuito Interior s/n, Ciudad Universitaria, Coyoacán, C.P. 4510, México, D.F."
        ).save()
        def inst7 = new Institucion(
                id: 7L,
                nombre: "Facultad de Estudios Superiores Acatlán",
                descripcion: "Facultad de Estudios Superiores Acatlán",
                direccion: "Av. Alcanfores y San Juan Totoltepec s/n, Santa Cruz Acatlán, Naucalpan, C.P. 53150, Edo. de México"
        ).save()

    }

    def destroy = {

    }
}
