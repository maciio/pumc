package mx.com.pumc.dominio
/**
 * Entidad Base con campos auditables
 * @author Rafael Antonio Guti&eacute;rrez Turullols
 * Date: Aug 23, 2011
 * Time: 1:54:15 PM
 */
abstract class BaseAuditableEntity extends BaseEntity implements Auditable {
    Date fechaCreacion = new Date()
    String usuarioCreacion = "default"
    Date fechaModificacion
    String usuarioModificacion
  
    static constraints = {
        fechaCreacion nullable: false
        usuarioCreacion nullable: false, blank: false
        usuarioModificacion nullable: true
        fechaModificacion nullable: true, blank: false
        
    }
}
