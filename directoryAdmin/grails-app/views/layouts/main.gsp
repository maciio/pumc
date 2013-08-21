<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Adminitrador de Directorios"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <g:javascript src="jquery/jquery-1.8.3.js"/>
    <g:javascript src="jquery/jquery-ui-bootstrap/js/jquery-ui-1.8.16.custom.min.js"/>
    <g:javascript src="jquery/jquery-ui-bootstrap/third-party/jQuery-UI-FileInput/js/fileinput.jquery.js"/>
    <g:javascript src="bootstrap/js/bootstrap.js"/>
    <link href="${resource(dir: "js/bootstrap/css", file: "bootstrap.css")}" rel="stylesheet" media="screen">
    <link href="${resource(dir: "js/bootstrap/css", file: "bootstrap-responsive.css")}" rel="stylesheet">
    <link href="${resource(dir: "css/jquery-ui-bootstrap/custom-theme", file: "jquery-ui-1.8.16.custom.css")}" rel="stylesheet">
    <link href="${resource(dir: "js/jquery/jquery-ui-bootstrap/third-party/jQuery-UI-FileInput/css", file: "enhanced.css")}" rel="stylesheet">
    <link href="${resource(dir: "css", file: "scaffolding.css")}" rel="stylesheet">
    <link rel="shortcut icon" href="${resource(dir: 'images/pumc', file: 'pumc.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">

            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
                <a class="brand"><span class="text-info">${g.message(code: "default.appName.label", default: "Administrador de Directorios")}</span></a>
            <div id="mainNav"  class="nav-collapse">
                <ul class="nav">
                    <li ${request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : ''}><a href="${createLink(uri: '/')}">Inicio</a></li>
                    <li ${controllerName == 'persona' ? ' class="active"' : ''}><g:link controller="persona">Invitados</g:link></li>
                    <li ${controllerName == 'uploadDirectory' ? ' class="active"' : ''}><g:link controller="uploadDirectory">Directorio</g:link></li>
                    <li ${controllerName == 'email' ? ' class="active"' : ''}><g:link controller="email">M@il</g:link></li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <g:layoutBody/>
    <footer>
        <p>
            %{--<span style="color:#ad6704"><small>${g.message(code: "default.footer.label", default: "UNAM 2013")}</small></span>--}%
        </p>
    </footer>
</div>
<r:layoutResources/>
</body>
</html>
