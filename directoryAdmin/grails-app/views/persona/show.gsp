<%@ page import="mx.com.pumc.util.CadenaUtils; mx.com.pumc.Persona" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pumc.persona.main.label', default: 'Persona')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">
    <div class="span3">
        <div class="well">
            <ul class="nav nav-list">
                <li class="nav-header"><g:message code="pumc.persona.main.label"/></li>
                <li>
                    <a href="${createLink(action: "list")}" class="list">
                        <i class="icon-list"></i>
                        <g:message code="pumc.persona.list.label"/>
                    </a>
                </li>
                <li>
                    <a href="${createLink(action: "create")}" class="create">
                        <i class="icon-plus"></i>
                        <g:message code="pumc.persona.new.label"/>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="span9">
        <div id="show-persona" class="content scaffold-show" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="page-header"><h1><g:message code="pumc.persona.data.label"/></h1></div>
            <dl>
                <dt><g:message code="pumc.persona.nombreCompleto.label" default="Nombre"/></dt>
                <dd>${personaInstance.toString()}</dd>

                <g:if test="${personaInstance?.edad}">
                    <dt><g:message code="pumc.persona.edad.label" default="Edad"/></dt>
                    <dd>${personaInstance.edad}</dd>
                </g:if>

                <g:if test="${personaInstance?.email}">
                    <dt><g:message code="pumc.persona.email.label" default="Email"/></dt>
                    <dd>${personaInstance.email}</dd>
                </g:if>

                <g:if test="${personaInstance?.direccionParticular}">
                    <dt><g:message code="pumc.persona.domicilioParticular.label" default="Domicilio Particular"/></dt>
                    <dd>
                        <address>
                            ${personaInstance.direccionParticular}<br>
                            <g:if test="${personaInstance?.telefono1}">
                                <abbr title="Telefono 1">Tel1:</abbr> ${personaInstance.telefono1}<br>
                            </g:if>
                            <g:if test="${personaInstance?.telefono2}">
                                <abbr title="Telefono 2">Tel2:</abbr> ${personaInstance.telefono2}<br>
                            </g:if>
                        </address>
                    </dd>

                </g:if>

                <g:if test="${personaInstance?.nacionalidad}">
                    <dt><g:message code="pumc.persona.nacionalidad.label" default="Nacionalidad"/></dt>
                    <dd>${personaInstance.nacionalidad}</dd>
                </g:if>

                <g:if test="${personaInstance?.ocupacion}">
                    <dt><g:message code="pumc.persona.ocupacion.label" default="Ocupación"/></dt>
                    <dd>${personaInstance.ocupacion.descripcion}</dd>
                </g:if>

                <g:if test="${personaInstance?.seccion}">
                    <dt><g:message code="pumc.persona.seccion.label" default="Sección"/></dt>
                    <dd>${personaInstance.seccion.descripcion}</dd>
                </g:if>

                <g:if test="${personaInstance?.medio}">
                    <dt><g:message code="pumc.persona.medio.label" default="Medio"/></dt>
                    <dd>${personaInstance.medio}</dd>
                </g:if>

                <g:if test="${personaInstance?.titulo}">
                    <dt><g:message code="pumc.persona.titulo.label" default="Titulo"/></dt>
                    <dd>${personaInstance.titulo}</dd>
                </g:if>

                <g:if test="${personaInstance?.cargo}">
                    <dt><g:message code="pumc.persona.cargo.label" default="Cargo"/></dt>
                    <dd>${personaInstance.cargo}</dd>
                </g:if>

                <g:if test="${personaInstance?.procedencia}">
                    <dt><g:message code="pumc.persona.procedencia.label" default="Procedencia"/></dt>
                    <dd>${personaInstance.procedencia}</dd>
                </g:if>

                <g:if test="${personaInstance?.lengua}">
                    <dt><g:message code="pumc.persona.lengua.label" default="Lengua"/></dt>
                    <dd>${personaInstance.lengua.descripcion}</dd>
                </g:if>

                <g:if test="${personaInstance?.institucion}">
                    <dt><g:message code="pumc.persona.institucion.label" default="Institución"/></dt>
                    <dd>
                        <address>
                            <span style="color: #0077b3"><strong>${personaInstance.institucion.nombre}</strong><br>
                            </span>
                            ${direccionInstitucion}
                        </address>
                    </dd>
                </g:if>

                <g:if test="${personaInstance?.evento}">
                    <dt><g:message code="pumc.persona.evento.label" default="Evento"/></dt>
                    <dd>${personaInstance.evento.descripcion}</dd>
                </g:if>

                <g:if test="${personaInstance?.directorio}">
                    <dt><g:message code="pumc.persona.directorio.label" default="Directorio"/></dt>
                    <dd>${personaInstance.directorio.descripcion}</dd>
                </g:if>

            </dl>
            <g:form>
                <div class="form-actions">
                    <div class="btn-group">
                        <g:hiddenField name="id" value="${personaInstance?.id}"/>
                        <div class="btn-group">
                            <input type="button" name="edit" class="btn btn-info"
                                   value="${g.message(code: "default.button.edit.label")}"
                                   onclick="location.href = '${createLink(action: "edit", params: [id: personaInstance?.id])}'">
                            <g:submitButton class="btn btn-danger" action="delete" name="delete"
                                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                        </div>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
