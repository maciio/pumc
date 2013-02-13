<%@ page import="mx.com.pumc.Persona" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
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
                <li class="active">
                    <a href="${createLink(action: "create")}" class="create">
                        <i class="icon-plus"></i>
                        <g:message code="pumc.persona.new.label"/>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="span9">
        <div id="create-persona" class="content scaffold-create" role="main">
            %{--<div class="page-header">--}%
                %{----}%
            %{--</div>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${personaInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${personaInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form action="save" class="form-horizontal">
                <fieldset>
                    <legend><h1><g:message code="default.new.o.label" args="['Invitado']"/></h1></legend>
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="form-actions form-horizontal">
                    <button type="submit" id="create" name="create" class="btn btn-large btn-primary">
                        <i class="icon-ok icon-white"></i>
                        ${message(code: 'default.button.create.label', default: 'Create')}
                    </button>
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
