<%@ page import="com.sun.xml.internal.bind.v2.TODO" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="pumc.directory.main.label" args="[entityName]"/></title>
</head>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<body>
<div class="row-fluid">
    <div class="span3">
        <div class="well">
            <ul class="nav nav-list">
                <li class="nav-header"><g:message code="pumc.directory.main.label"/></li>
                <li class="active">
                    <a href="${createLink(action: "list")}">
                        <i class="icon-upload"></i>
                        <g:message code="pumc.directory.newFile.label"/>
                    </a>
                </li>
                <li class="disabled">
                    <a href="#">
                        <i class="icon-download"></i>
                        <g:message code="pumc.directory.exportFile.label"/>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="span9">
        <h1><g:message code="pumc.directory.uploadFile.label"/></h1>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <g:form action="uploadPOI" method="post" enctype="multipart/form-data">
            <div>
                %{--TODO-agregar el tipo de directorio a ingresar--}%
                <g:hiddenField name="directorio" value="5"/>
            </div>

            <div class="dialog">
                <table>
                    <tbody>
                    <tr class="prop">
                        <td valign="top" class="name">
                            <g:message code="person.age.label" default="Selecciona tu archivo ..."/>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'age', 'errors')}">
                            <input type="file" name="file"/>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="buttons">
                <span class="button"><g:submitButton name="update" class="button" value="Cargar"/></span>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>