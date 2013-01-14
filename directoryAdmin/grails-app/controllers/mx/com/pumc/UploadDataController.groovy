package mx.com.pumc

import jxl.Sheet
import jxl.Workbook
import mx.com.pumc.dominio.UploadDirectoryUtil
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile


class UploadDataController {

    def uploadDataService

    def index() {}

    @Deprecated
    def uploadJXA() {
        log.debug("### --> uploadJXA")
        // get our multipart
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("file");

        log.debug("Archivo vacio: " + file.isEmpty())
        if (file) {
            // create our workbook
            Workbook workbook = Workbook.getWorkbook(file.inputStream)
            Sheet sheet = workbook.getSheet(0)
            def top = sheet.getCell(0, 0).contents
            log.debug("top: " + top)
            sheet.getRow(0).each { value ->
                log.debug("titulo: ${value.contents}")
            }

            def added = 0;
            def lista = []
            Ocupacion ocupacion = null
            def skipped = [];
            for (int r = 1; r < sheet.rows; r++) {
                def nombre = sheet.getCell(0, r).contents
                if (nombre == "") nombre = "Default"

                def descripcion = sheet.getCell(1, r).contents
                if (descripcion == "") descripcion = "sin descripcion"

                if (top == null || top == "") {
                    // do nothing
                } else {
                    ocupacion = new Ocupacion("nombre": nombre, "descripcion": descripcion)
                    lista.add(ocupacion)
                    added++
                }
            }
            workbook.close()

            // generate our flash message
            log.debug("Tamaño de lista: " + lista.size())
            log.debug("lista: " + lista)
            flash.message = "${added} sample request(s) added."
            if (skipped.size() > 0) {
                flash.message += "  Rows ${skipped.join(', ')} were skipped because they were incomplete or malformed"
            }
            redirect(controller: "uploadData", action: "index")
        } else {
            flash.message = 'El archivo no puede ir vacio'
            redirect(action: 'index')
        }

    }

    def uploadPOI() {
        log.debug("### -->uploadPOI")
        Directorio directorio = Directorio.findById(Long.parseLong(params.directorio))

        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("file");
        log.debug("Nombre del archivo: " + file.getName())
        log.debug("ContentType: " + file.getContentType())
        if (!file.empty && (file.getContentType() == "application/vnd.ms-excel"
                ||  file.getContentType() == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")) {
            if (directorio) {
                //def fs = new POIFSFileSystem(file.getInputStream())
                InputStream inputStream = file.getInputStream()
                //def workbook = new XSSFWorkbook(inputStream)
                int added = 0
                UploadDirectoryUtil importer = new UploadDirectoryUtil()
                importer.read(inputStream)//

                def sheet = importer.workbook.getSheetAt(0)
                log.debug("Hoja 0: " + sheet.getSheetName())
                importer.CONFIG_DIRECTORIO_COLUMN_MAP["sheet"] = sheet.getSheetName()

                List personaList = importer.getPersonList()
                added = uploadDataService.guardarPersona(personaList, directorio)
                flash.message = "${added} registros han sido agregados"  //TODO en msn.properties
                redirect(controller: "uploadData", action: "index")
            } else {
                flash.message = 'Se necesita especificar un tipo de directorio' //TODO en msn.properties
                redirect(action: 'index')
            }
        } else {
            flash.message = 'El archivo no es valido' //TODO en msn.properties
            redirect(action: 'index')
        }
    }
}
