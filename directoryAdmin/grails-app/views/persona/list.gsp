<%@ page import="mx.com.pumc.Persona" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.list.label" args="['Invitados']"/></title>
</head>

<body>
<div class="row-fluid">
    <div class="span3">
        <div class="well">
            <ul class="nav nav-list">
                <li class="nav-header"><g:message code="pumc.persona.main.label"/></li>
                <li class="active">
                    <a href="${createLink(action: "list")}" class="list">
                        <i class="icon-list icon-white"></i>
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
        <div id="list-persona" class="content scaffold-list" role="main">
            <legend><h1><g:message code="default.list.label" args="['Invitados']"/></h1></legend>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table table-striped">
                <thead>
                <tr>
                    <g:sortableColumn property="nombre" title="${message(code: 'pumc.persona.nombreCompleto.label', default: 'Nombre')}"/>
                    <g:sortableColumn property="directorio" title="${message(code: 'pumc.persona.directorio.label', default: 'Directorio')}"/>
                    <g:sortableColumn property="email" title="${message(code: 'pumc.persona.email.label', default: 'Directorio')}"/>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${personaInstanceList}" status="i" var="personaInstance">
                    <tr>
                        <td>${personaInstance.getNombreCompleto()}</td>
                        <td>${personaInstance.directorio}</td>
                        <td>${personaInstance.email}</td>
                        <td><g:link action="show" id="${personaInstance.id}" class="btn btn-small">${message(code: 'default.button.show.button.label', default: 'Mostrar')}</g:link></td>
                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${personaInstanceTotal}"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
