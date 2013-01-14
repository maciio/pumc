package mx.com.pumc.dominio

import org.grails.plugins.excelimport.AbstractExcelImporter
import org.grails.plugins.excelimport.ExcelImportService
import org.grails.plugins.excelimport.ExpectedPropertyType


class UploadDirectoryUtil extends AbstractExcelImporter {

    String firstSheet = "Hoja1"

    def getExcelImportService() {
        ExcelImportService.getService()
    }

    Map CONFIG_DIRECTORIO_COLUMN_MAP = [
            sheet: firstSheet,
            startRow: 1,
            columnMap: [
                    'A': 'institucion',
                    'B': 'nombre',
                    'C': 'apellidos',
                    'D': 'cargo',
                    'E': 'email',
                    'F': 'telefono1',
                    'G': 'telefono2',
                    'H': 'institucionDireccion'
            ]
    ]

    List<Map> getPersonList() {
        List directoryParamsList = excelImportService.columns(workbook, CONFIG_DIRECTORIO_COLUMN_MAP)
        return directoryParamsList
    }

    static Map propertyConfigurationMap = [
            institucion: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null]),
            nombre: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null]),
            apellidos: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null]),
            cargo: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null]),
            email: ([expectedType: ExpectedPropertyType.EmailType, defaultValue: null]),
            telefono1: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null]),
            telefono2: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null]),
            institucionDireccion: ([expectedType: ExpectedPropertyType.StringType, defaultValue: null])
    ]
}
