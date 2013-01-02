import mx.com.pumc.dominio.AuditEventListener
import org.codehaus.groovy.grails.orm.hibernate.HibernateEventListeners

// Place your Spring DSL code here
beans = {
    auditListener(mx.com.pumc.dominio.AuditEventListener)

    hibernateEventListeners(HibernateEventListeners) {
        listenerMap = ['pre-insert': auditListener]
    }
}
