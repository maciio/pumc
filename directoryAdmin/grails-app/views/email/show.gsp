<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Envio de correo</title>
</head>

<body>
<div class="row-fluid">
    <g:if test="${flash.message}">
        <div class="alert alert-success" role="status">
            ${flash.message}
        </div>
    </g:if>
    <div class="hero-unit"
         style="width: 800px; height:600px; margin: 0px auto; vertical-align: middle; text-align: center">
        <h1><g:message code="pumc.email.main.label" args="['Invitados']"/></h1>
        <hr>
        <g:form action="send" class="form-horizontal" method="post">
            <div class="control-group">
                <label class="control-label" for="email"><g:message code="pumc.email.mails.label"/></label>

                <div class="controls">
                    <input type="text" id="email" name="email" value="" style="width: 100%"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="email"><g:message code="pumc.email.comment.label"/></label>

                <div class="controls">
                    <g:textArea name="comment"
                                value="${comentarios}"
                                rows="10"
                                cols="50"
                                style="width: 100%; resize: none;"/>
                </div>
            </div>
                <button type="submit" id="create" name="create" class="btn btn-large btn-primary">
                    <i class="icon-envelope icon-white"></i>
                    ${message(code: 'default.button.send.label', default: 'Send')}
                </button>
        </g:form>
    </div>
</div>
</body>
</html>