<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>PUMC -Directorio Admin-</title>
</head>

<body>
<div class="row-fluid">
    %{--<aside id="application-status" class="span2">--}%
        %{--<div class="well sidebar-nav">--}%
            %{--<h5>Application Status</h5>--}%
            %{--<ul>--}%
                %{--<li>App version: <g:meta name="app.version"/></li>--}%
                %{--<li>Grails version: <g:meta name="app.grails.version"/></li>--}%
                %{--<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>--}%
                %{--<li>JVM version: ${System.getProperty('java.version')}</li>--}%
                %{--<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>--}%
                %{--<li>Domains: ${grailsApplication.domainClasses.size()}</li>--}%
                %{--<li>Services: ${grailsApplication.serviceClasses.size()}</li>--}%
                %{--<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>--}%
            %{--</ul>--}%
            %{--<h5>Installed Plugins</h5>--}%
            %{--<ul>--}%
                %{--<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">--}%
                    %{--<li>${plugin.name} - ${plugin.version}</li>--}%
                %{--</g:each>--}%
            %{--</ul>--}%
        %{--</div>--}%
    %{--</aside>--}%
    %{--<div class="span2"/>--}%
    <div class="span10 offset1">


        <div class="hero-unit">
            <h2>Bienvenido</h2>
            <p>${g.message(code: "pumc.directory.intro")}</p>
        </div>

        <div class="row-fluid">
            <div class="well  well-large span6">
                <h2>Pruebame</h2>
                <p>Esta apliación por ahora ofrece las siguiente opciones:</p>
                <ul class="nav nav-list">
                        <li><g:link controller="persona">Invitado</g:link></li>
                        <li><g:link controller="uploadDirectory">Cargar Directorio</g:link></li>
                </ul>
            </div>

            <div class="well span6">
                <h2>Construida</h2>
                <p>Diseñada con:</p>
                <dl class="dl-horizontal">
                    <dt class="pull-left"><a href="http://grails.org" rel="external">Grails</a></dt>
                    <dd><em class="text-warning">...nos gusta el desarrollo ágil</em></dd>
                    <dt><a href="http://twitter.github.com/bootstrap" rel="external">Twitter Bootstrap </a></dt>
                    <dd><em class="text-success">...nos encanta el diseño de twitter ;-)</em></dd>
                </dl>
            </div>
        </div>

    </div>
</div>
</body>
</html>
