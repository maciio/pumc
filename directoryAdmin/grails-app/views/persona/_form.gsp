<%@ page import="mx.com.pumc.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="persona.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${personaInstance?.apellidoMaterno}"/>
</div>

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

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telOficina', 'error')} ">
	<label for="telOficina">
		<g:message code="persona.telOficina.label" default="Tel Oficina" />
		
	</label>
	<g:field name="telOficina" type="number" value="${personaInstance.telOficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'extensionOficina', 'error')} ">
	<label for="extensionOficina">
		<g:message code="persona.extensionOficina.label" default="Extension Oficina" />
		
	</label>
	<g:field name="extensionOficina" type="number" value="${personaInstance.extensionOficina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telMovil', 'error')} ">
	<label for="telMovil">
		<g:message code="persona.telMovil.label" default="Tel Movil" />
		
	</label>
	<g:field name="telMovil" type="number" value="${personaInstance.telMovil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'ocupacion', 'error')} ">
	<label for="ocupacion">
		<g:message code="persona.ocupacion.label" default="Ocupacion" />
		
	</label>
	<g:select id="ocupacion" name="ocupacion.id" from="${mx.com.pumc.Ocupacion.list()}" optionKey="id" value="${personaInstance?.ocupacion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'seccion', 'error')} ">
	<label for="seccion">
		<g:message code="persona.seccion.label" default="Seccion" />
		
	</label>
	<g:select id="seccion" name="seccion.id" from="${mx.com.pumc.Seccion.list()}" optionKey="id" value="${personaInstance?.seccion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'medio', 'error')} ">
	<label for="medio">
		<g:message code="persona.medio.label" default="Medio" />
		
	</label>
	<g:textField name="medio" value="${personaInstance?.medio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="persona.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${personaInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'cargo', 'error')} ">
	<label for="cargo">
		<g:message code="persona.cargo.label" default="Cargo" />
		
	</label>
	<g:textField name="cargo" value="${personaInstance?.cargo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'procedencia', 'error')} ">
	<label for="procedencia">
		<g:message code="persona.procedencia.label" default="Procedencia" />
		
	</label>
	<g:textField name="procedencia" value="${personaInstance?.procedencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'lengua', 'error')} ">
	<label for="lengua">
		<g:message code="persona.lengua.label" default="Lengua" />
		
	</label>
	<g:select id="lengua" name="lengua.id" from="${mx.com.pumc.Lengua.list()}" optionKey="id" value="${personaInstance?.lengua?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'institucion', 'error')} ">
	<label for="institucion">
		<g:message code="persona.institucion.label" default="Institucion" />
		
	</label>
	<g:select id="institucion" name="institucion.id" from="${mx.com.pumc.Institucion.list()}" optionKey="id" value="${personaInstance?.institucion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'evento', 'error')} ">
	<label for="evento">
		<g:message code="persona.evento.label" default="Evento" />
		
	</label>
	<g:select id="evento" name="evento.id" from="${mx.com.pumc.Evento.list()}" optionKey="id" value="${personaInstance?.evento?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${personaInstance?.apellidoPaterno}"/>
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

