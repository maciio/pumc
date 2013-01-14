package mx.com.pumc

import org.apache.commons.lang.StringUtils

/**
 * Servicio para guardar los datos de las personas
 */
class UploadDataService {

    def guardarPersona(List personaList, Directorio directorio) {
        int added = 0
        log.debug("lista: >>>" + personaList)
        personaList.each {
            if (validarPersona(it, directorio)) {
                added++
            }
        }
        log.debug("lista con ${added} personas validas")
        return added
    }

    def validarPersona(Map registro, Directorio directorio) {
        log.debug("###--> validarPersona()")
        log.debug("nombre: " + registro["nombre"])
        log.debug("Institucion: " + registro["institucion"])
        log.debug("Direccion Institucion: " + registro["institucionDireccion"])
        if (StringUtils.isNotBlank(registro["nombre"]) && StringUtils.isNotBlank("apellidos")) {
            Institucion institucion = Institucion.findByNombreLike("%" + registro["institucion"]?.toString()?.trim() + "%")
            /*TODO validar la ocupacion, seccion, lengua, evento para los siguientes directorios*/
            if (!institucion && registro["institucion"]) {
                institucion = new Institucion(
                        nombre: registro["institucion"],
                        descripcion: registro["institucion"],
                        direccion: registro["institucionDireccion"]
                )
                institucion.save()
            }
            if (existePersona(registro)) {
                log.error("La persona ${registro["nombre"] + " " + registro["apellidos"]} ya se encuentra en la BD")

                return false
            }
            log.debug("...a guardar persona")
            Persona persona = new Persona()
            persona.nombre = registro["nombre"]?.toString()?.trim()
            persona.apellidos = registro["apellidos"]?.toString()?.trim()
            persona.cargo = registro["cargo"]?.toString()?.trim()
            persona.email = registro["email"]?.toString()?.trim()
            persona.telefono1 = registro["telefono1"]?.toString()?.trim()
            persona.telefono2 = registro["telefono2"]?.toString()?.trim()
            persona.institucion = institucion
            persona.directorio = directorio
            log.debug("persona nueva salvada")
            persona.save(failOnError: true, flush: true)
            return true
        }
    }

    boolean existePersona(Map registro) {
        String nombre = registro["nombre"]?.toString()?.trim()
        String apellidos = registro["apellidos"]?.toString()?.trim()
        StringBuilder qry = new StringBuilder("SELECT p FROM Persona p WHERE p.nombre = :nombre AND p.apellidos = :apellidos")
        List list = Persona.executeQuery(qry.toString(), [nombre: nombre, apellidos: apellidos])
        def existePersona = (list.size() != 0) ? true: false
        return existePersona
    }

}


