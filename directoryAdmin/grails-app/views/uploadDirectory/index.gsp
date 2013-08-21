<%@ page import="com.sun.xml.internal.bind.v2.TODO" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="pumc.directory.main.label" args="[entityName]"/></title>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#file').customFileInput({
                button_position : 'right'
            });
        });
    </script>
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
                    <a href="${createLink(action: "index")}">
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
            <input id="file" class="input-large" type="file" name="file"/>
            </td>
            </tr>
            </tbody>
            </table>
            %{--<div class="fileupload fileupload-new" data-provides="fileupload">--}%
                %{--<div class="input-append">--}%
                    %{--<div class="uneditable-input span3">--}%
                        %{--<i class="icon-file fileupload-exists"></i>--}%
                        %{--<span class="fileupload-preview"></span>--}%
                    %{--</div>--}%
                    %{--<span class="btn btn-file">--}%
                        %{--<span class="fileupload-new">Select file</span>--}%
                        %{--<span class="fileupload-exists">Change</span>--}%
                        %{--<input type="file" />--}%
                    %{--</span><a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>--}%
                %{--</div>--}%
            %{--</div>--}%

        </div>
        %{--</div>--}%

        <div class="buttons">
            <span class="button"><g:submitButton name="update" class="button" value="Cargar"/></span>
        </div>
    </g:form>
</div>
</div>
</body>
</html>