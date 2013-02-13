<%@ page import="mx.com.pumc.Persona" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'pumc.persona.main.label', default: 'Persona')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
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
        <div id="edit-persona" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
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
            <g:form method="post">
                <g:hiddenField name="id" value="${personaInstance?.id}"/>
                <g:hiddenField name="version" value="${personaInstance?.version}"/>
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <div class="form-actions">
                    <div class="btn-group">
                        <g:actionSubmit class="btn btn-info" action="update"
                                        value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                        <g:actionSubmit class="btn btn-danger" action="delete"
                                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                        formnovalidate=""
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</body>
</html>
