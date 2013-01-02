package mx.com.pumc.dominio;

import java.util.Date;

/**
 * @author Rafael Antonio Guti&eacute;rrez Turullols
 *         Date: Aug 23, 2011
 *         Time: 12:06:36 PM
 */
public interface Auditable {
    void setFechaCreacion(Date fechaCreacion);
    Date getFechaCreacion();
    void setFechaModificacion(Date fechaModificacion);
    Date getFechaModificacion();
    void setUsuarioCreacion(String usuario);
    String getUsuarioCreacion();
    void setUsuarioModificacion(String usuario);    
    String getUsuarioModificacion();
}
