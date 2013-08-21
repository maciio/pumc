<%@ page import="com.sun.xml.internal.bind.v2.TODO" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="pumc.directory.main.label" args="[entityName]"/></title>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#file').customFileInput({
                button_position : 'right',
                classes: 'input-xlarge',
                feedback_text: 'No archivo Seleccionado',
                button_text: 'Buscar'
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

        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <g:form action="uploadPOI" method="post" enctype="multipart/form-data" class="form-horizontal">
            <div>
                %{--TODO-agregar el tipo de directorio a ingresar--}%
                <g:hiddenField name="directorio" value="5"/>
            </div>

            <legend><h1><g:message code="pumc.directory.uploadFile.label"/></h1></legend>
            <div class="control-group">
                <label class="control-label" for="file">Selecciona tu archivo</label>
            <div class="controls">
                <input id="file" type="file" name="file"/>
            </div>
            <div class="control-group">
                <div class="controls" style="width: 20%">
                    <br/><input type="submit" name="update" id="update" class="btn btn-block btn-primary" value="Cargar" />
                </div>
            </div>
        </div>
        </g:form>
    </div>
</div>
</body>
</html>