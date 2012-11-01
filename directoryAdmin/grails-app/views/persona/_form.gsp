<%@ page import="mx.com.pumc.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'edad', 'error')} ">
	<label for="edad">
		<g:message code="persona.edad.label" default="Edad" />
		
	</label>
	<g:textField name="edad" value="${personaInstance?.edad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${personaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nacionalidad', 'error')} ">
	<label for="nacionalidad">
		<g:message code="persona.nacionalidad.label" default="Nacionalidad" />
		
	</label>
	<g:textField name="nacionalidad" value="${personaInstance?.nacionalidad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'direccionParticular', 'error')} ">
	<label for="direccionParticular">
		<g:message code="persona.direccionParticular.label" default="Direccion Particular" />
		
	</label>
	<g:textField name="direccionParticular" value="${personaInstance?.direccionParticular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telMovil', 'error')} ">
	<label for="telMovil">
		<g:message code="persona.telMovil.label" default="Tel Movil" />
		
	</label>
	<g:field name="telMovil" type="number" value="${personaInstance.telMovil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'extOficina', 'error')} ">
	<label for="extOficina">
		<g:message code="persona.extOficina.label" default="Ext Oficina" />
		
	</label>
	<g:field name="extOficina" type="number" value="${personaInstance.extOficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="persona.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:select id="ocupacion" name="ocupacion.id" from="${mx.com.pumc.Ocupacion.list()}" optionKey="id" value="${personaInstance?.ocupacion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="persona.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${personaInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'directorio', 'error')} required">
	<label for="directorio">
		<g:message code="persona.directorio.label" default="Directorio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="directorio" name="directorio.id" from="${mx.com.pumc.Directorio.list()}" optionKey="id" required="" value="${personaInstance?.directorio?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${personaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telOficina', 'error')} required">
	<label for="telOficina">
		<g:message code="persona.telOficina.label" default="Tel Oficina" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telOficina" type="number" value="${personaInstance.telOficina}" required=""/>
</div>

