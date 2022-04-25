<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Prueba</title>
    </head>

    <body>
        <h1>Agregar la Persona</h1>

        <form action="SvPersona" method="POST">
            <p>
                <label>Dni: </label>
                <input type="text" name="dni">
            </p>
            <p>
                <label>Nombre: </label>
                <input type="text" name="nombre">
            </p>
            <p>
                <label>Apellido: </label>
                <input type="text" name="apellido">
            </p>
            <p>
                <label>Teléfono: </label>
                <input type="text" name="telefono">
            </p>
            <button type="submit" >Enviar</button>
        </form>

        
        <h1>Ver lista de Personas</h1>
        <form action="SvPersona" method="GET">
            <p>Si desea ver todos las personas haga click en el botón mostrar personas</p> 
            <button type="submit">Mostrar Personas</button>
        </form>

        
        <h1>Eliminar Personas</h1>
        <form action="SvEliminar" method="POST">
            <p>Ingrese el DNI de la persona a eliminar</p>
            <p>
                <label>ID a eliminar: </label>
                <input type="text" name="id_eliminar" value="0">
            </p>
            <button type="submit">Eliminar </button>
        </form>
        
        
        <h1>Editar Personas</h1>
        <form action="editarPersona.jsp" method="POST">
            <p>Ingrese el id de la persona a editar</p>
            <p>
                <label>ID a editar: </label>
                <input type="text" name="id_editar" value="1">
            </p>
            <button type="submit">Editar</button>
        </form>
    </body>
</html>
