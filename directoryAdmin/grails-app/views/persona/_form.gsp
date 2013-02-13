<%@ page import="mx.com.pumc.Persona" %>


<div class="control-group">
    <label class="control-label" for="nombre"><g:message code="pumc.persona.nombre.label" default="Nombre" /></label>
    <div class="controls">
        <input type="text" name="nombre" id="nombre" value="${personaInstance?.nombre}" required/>
    </div>
</div>
<div class="control-group">
    <label class="control-label" for="apellidos"><g:message code="pumc.persona.apellidos.label" default="Apellidos" /></label>
    <div class="controls">
        <input type="text" name="apellidos" id="apellidos" value="${personaInstance?.apellidos}" required/>
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="edad"><g:message code="pumc.persona.edad.label" default="Edad" /></label>
    <div class="controls">
        <g:textField name="edad" value="${personaInstance?.edad}"/>
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="email"><g:message code="pumc.persona.email.label" default="Email" /></label>
    <div class="controls">
        <div class="input-prepend">
            <span class="add-on"><i class="icon-envelope"></i></span>
            <input type="email" id="email" name="email" value="${personaInstance?.email}" style="width: 180px"/>
        </div>
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="nacionalidad"><g:message code="pumc.persona.nacionalidad.label" default="Nacionalidad" /></label>
    <div class="controls">
        <g:textField name="nacionalidad" value="${personaInstance?.nacionalidad}"/>
    </div>
</div>
<fieldset id="domicilio"  class="embedded" >
    <legend>Domicilio</legend>
    <div class="control-group">
        <label class="control-label" for="nacionalidad"><g:message code="pumc.persona.direccionParticular.label" default="Dirección Particular" /></label>
        <div class="controls">
            <g:textField name="direccionParticular" value="${personaInstance?.direccionParticular}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="telefono1"><g:message code="pumc.persona.telefono1.label" default="Telefono 1" /></label>
        <div class="controls">
            <g:textField name="telefono1" value="${personaInstance?.telefono1}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="telefono2"><g:message code="pumc.persona.telefono2.label" default="Telefono 2" /></label>
        <div class="controls">
            <g:textField name="telefono2" value="${personaInstance?.telefono1}"/>
        </div>
    </div>
</fieldset>
<fieldset id="datosDirectorio" class="embedded">
<legend>Datos Particulares Directorio</legend>

    <div class="control-group">
        <label class="control-label" for="cargo"><g:message code="pumc.persona.directorio.label" default="Directorio" /></label>
        <div class="controls">
            <g:select id="directorio"
                      name="directorio.id"
                      from="${mx.com.pumc.Directorio.list()}"
                      optionKey="id"
                      value="${personaInstance?.directorio?.id}"
                      class="many-to-one"
                      noSelection="${['':'Seleccione']}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="titulo"><g:message code="pumc.persona.titulo.label" default="Titulo" /></label>
        <div class="controls">
            <g:textField name="titulo" value="${personaInstance?.titulo}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="cargo"><g:message code="pumc.persona.cargo.label" default="Cargo" /></label>
        <div class="controls">
            <g:textField name="cargo" value="${personaInstance?.cargo}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="ocupacion"><g:message code="pumc.persona.ocupacion.label" default="Ocupación" /></label>
        <div class="controls">
        <g:select id="ocupacion"
                  name="ocupacion.id"
                  from="${mx.com.pumc.Ocupacion.list()}"
                  optionKey="id" value="${personaInstance?.ocupacion?.id}"
                  class="many-to-one"
                  noSelection="${['':'Seleccione']}"/>
        </div>
    </div>

            <div class="control-group">
                <label class="control-label" for="institucion"><g:message code="pumc.persona.institucion.label" default="Institucion" /></label>
                <div class="controls">
                    <g:select id="institucion"
                              name="institucion.id"
                              from="${mx.com.pumc.Institucion.list()}"
                              optionKey="id"
                              value="${personaInstance?.institucion?.id}"
                              class="many-to-one"
                              noSelection="${['':'Seleccione']}"/>
                </div>
            </div>

        %{--<div class="span6">--}%
            %{--<address>--}%
                %{--<strong>Twitter, Inc.</strong><br>--}%
                %{--795 Folsom Ave, Suite 600<br>--}%
                %{--San Francisco, CA 94107<br>--}%
                %{--<abbr title="Phone">P:</abbr> (123) 456-7890--}%
            %{--</address>--}%
        %{--</div>--}%

    <div class="control-group">
        <label class="control-label" for="carrera"><g:message code="pumc.persona.carerra.label" default="Carrera" /></label>
        <div class="controls">
            <g:textField name="carrera" value="${personaInstance?.carrera}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="medio"><g:message code="pumc.persona.medio.label" default="Medio" /></label>
        <div class="controls">
            <g:textField name="medio" value="${personaInstance?.medio}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="procedencia"><g:message code="pumc.persona.procedencia.label" default="Procedencia" /></label>
        <div class="controls">
            <g:textField name="procedencia" value="${personaInstance?.procedencia}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="seccion"><g:message code="pumc.persona.seccion.label" default="Sección" /></label>
        <div class="controls">
            <g:select id="seccion"
                      name="seccion.id"
                      from="${mx.com.pumc.Seccion.list()}"
                      optionKey="id"
                      value="${personaInstance?.seccion?.id}"
                      class="many-to-one"
                      noSelection="${['':'Seleccione']}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="lengua"><g:message code="pumc.persona.lengua.label" default="Lengua" /></label>
        <div class="controls">
            <g:textField name="lengua" value="${personaInstance?.lengua}"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label" for="evento"><g:message code="pumc.persona.procedencia.label" default="Evento" /></label>
        <div class="controls">
            <g:textField name="evento" value="${personaInstance?.evento}"/>
        </div>
    </div>
</fieldset>