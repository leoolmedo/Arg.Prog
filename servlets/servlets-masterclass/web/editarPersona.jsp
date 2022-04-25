<%@page import="logica.Persona"%>
<%@page import="logica.controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Persona</title>
    </head>
    <body>
        <h1>Editar Persona</h1>
        
         <form action="SvEditar" method="POST">
            <% 
            //int id_editar = Integer.getInteger(request.getParameter("id_editar"));
            int id_editar = Integer.parseInt(request.getParameter("id_editar"));

            controladora control = new controladora();
            Persona pers = control.buscarPersona(id_editar);
            %>
             <p>
                <label>Dni: </label>
                <input type="text" name="dni" value="<%=pers.getDni()%>">
            </p>
            <p>
                <label>Nombre: </label>
                <input type="text" name="nombre" value="<%=pers.getNombre()%>">
            </p>
            <p>
                <label>Apellido: </label>
                <input type="text" name="apellido" value="<%=pers.getApellido()%>">
            </p>
            <p>
                <label>Teléfono: </label>
                <input type="text" name="telefono" value="<%=pers.getTelefono()%>">
            </p>
            <p>
                <input type="hidden" name="id_editar" value="<%=pers.getId()%>">
            </p>
            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>
