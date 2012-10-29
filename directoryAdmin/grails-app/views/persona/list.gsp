
<%@ page import="mx.com.pumc.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nacionalidad" title="${message(code: 'persona.nacionalidad.label', default: 'Nacionalidad')}" />
					
						<g:sortableColumn property="direccionParticular" title="${message(code: 'persona.direccionParticular.label', default: 'Direccion Particular')}" />
					
						<g:sortableColumn property="telMovil" title="${message(code: 'persona.telMovil.label', default: 'Tel Movil')}" />
					
						<g:sortableColumn property="extOficina" title="${message(code: 'persona.extOficina.label', default: 'Ext Oficina')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'persona.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'persona.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "nacionalidad")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "direccionParticular")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "telMovil")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "extOficina")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
