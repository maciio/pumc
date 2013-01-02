package mx.com.pumc.dominio;

import org.hibernate.event.PreInsertEvent;
import org.hibernate.event.PreInsertEventListener;
import org.hibernate.event.PreUpdateEvent;
import org.hibernate.event.PreUpdateEventListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;

public class AuditEventListener implements PreInsertEventListener {
    private static final Logger LOGGER = LoggerFactory.getLogger(AuditEventListener.class);

    public boolean onPreInsert(PreInsertEvent event) {
        LOGGER.debug("onPreInsert del entity {}", event.getEntity().getClass());
        if (event.getEntity() instanceof Auditable) {
            Auditable auditable = (Auditable) event.getEntity();
            if (auditable.getFechaCreacion() == null) {
                auditable.setFechaCreacion(new Date());
            }
            auditable.setUsuarioCreacion("Admin"); // TODO implementar hilo para usuario logeado
        }
        return false;
    }

}
