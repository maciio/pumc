
<%@ page import="mx.com.pumc.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-persona" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list persona">
			
				<g:if test="${personaInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="persona.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${personaInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="persona.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${personaInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="persona.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.nacionalidad}">
				<li class="fieldcontain">
					<span id="nacionalidad-label" class="property-label"><g:message code="persona.nacionalidad.label" default="Nacionalidad" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${personaInstance}" field="nacionalidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.direccionParticular}">
				<li class="fieldcontain">
					<span id="direccionParticular-label" class="property-label"><g:message code="persona.direccionParticular.label" default="Direccion Particular" /></span>
					
						<span class="property-value" aria-labelledby="direccionParticular-label"><g:fieldValue bean="${personaInstance}" field="direccionParticular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.telOficina}">
				<li class="fieldcontain">
					<span id="telOficina-label" class="property-label"><g:message code="persona.telOficina.label" default="Tel Oficina" /></span>
					
						<span class="property-value" aria-labelledby="telOficina-label"><g:fieldValue bean="${personaInstance}" field="telOficina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.extensionOficina}">
				<li class="fieldcontain">
					<span id="extensionOficina-label" class="property-label"><g:message code="persona.extensionOficina.label" default="Extension Oficina" /></span>
					
						<span class="property-value" aria-labelledby="extensionOficina-label"><g:fieldValue bean="${personaInstance}" field="extensionOficina"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.telMovil}">
				<li class="fieldcontain">
					<span id="telMovil-label" class="property-label"><g:message code="persona.telMovil.label" default="Tel Movil" /></span>
					
						<span class="property-value" aria-labelledby="telMovil-label"><g:fieldValue bean="${personaInstance}" field="telMovil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.ocupacion}">
				<li class="fieldcontain">
					<span id="ocupacion-label" class="property-label"><g:message code="persona.ocupacion.label" default="Ocupacion" /></span>
					
						<span class="property-value" aria-labelledby="ocupacion-label"><g:link controller="ocupacion" action="show" id="${personaInstance?.ocupacion?.id}">${personaInstance?.ocupacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.seccion}">
				<li class="fieldcontain">
					<span id="seccion-label" class="property-label"><g:message code="persona.seccion.label" default="Seccion" /></span>
					
						<span class="property-value" aria-labelledby="seccion-label"><g:link controller="seccion" action="show" id="${personaInstance?.seccion?.id}">${personaInstance?.seccion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.medio}">
				<li class="fieldcontain">
					<span id="medio-label" class="property-label"><g:message code="persona.medio.label" default="Medio" /></span>
					
						<span class="property-value" aria-labelledby="medio-label"><g:fieldValue bean="${personaInstance}" field="medio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="persona.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${personaInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="persona.cargo.label" default="Cargo" /></span>
					
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${personaInstance}" field="cargo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.procedencia}">
				<li class="fieldcontain">
					<span id="procedencia-label" class="property-label"><g:message code="persona.procedencia.label" default="Procedencia" /></span>
					
						<span class="property-value" aria-labelledby="procedencia-label"><g:fieldValue bean="${personaInstance}" field="procedencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.lengua}">
				<li class="fieldcontain">
					<span id="lengua-label" class="property-label"><g:message code="persona.lengua.label" default="Lengua" /></span>
					
						<span class="property-value" aria-labelledby="lengua-label"><g:link controller="lengua" action="show" id="${personaInstance?.lengua?.id}">${personaInstance?.lengua?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.institucion}">
				<li class="fieldcontain">
					<span id="institucion-label" class="property-label"><g:message code="persona.institucion.label" default="Institucion" /></span>
					
						<span class="property-value" aria-labelledby="institucion-label"><g:link controller="institucion" action="show" id="${personaInstance?.institucion?.id}">${personaInstance?.institucion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="persona.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="evento" action="show" id="${personaInstance?.evento?.id}">${personaInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="persona.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${personaInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.directorio}">
				<li class="fieldcontain">
					<span id="directorio-label" class="property-label"><g:message code="persona.directorio.label" default="Directorio" /></span>
					
						<span class="property-value" aria-labelledby="directorio-label"><g:link controller="directorio" action="show" id="${personaInstance?.directorio?.id}">${personaInstance?.directorio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="persona.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${personaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personaInstance?.id}" />
					<g:link class="edit" action="edit" id="${personaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
