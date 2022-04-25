<%@page import="java.util.List"%>
<%@page import="logica.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de personas</title>
    </head>
    <body>
        <h1>Listado de personas en la base de datos</h1>
        <table style="border: black solid 1px; text-align: center">
            <tr>
            <th style="width: 6em"> ID </th><th style="width: 10em"> DNI </th><th style="width: 20em"> Nombre </th><th style="width: 20em"> Apellido </th><th style="width: 15em"> Teléfono </th>
            </tr>
            <tbody>
                <%
                    List<Persona> listaPersonas = (List)request.getSession().getAttribute("listaPersonas");
                    for(Persona pers : listaPersonas){
                %>
                <tr>
                    <td><%=pers.getId() %></td>
                    <td><%=pers.getDni() %></td>
                    <td><%=pers.getNombre()%></td>
                    <td><%=pers.getApellido()%></td>
                    <td><%=pers.getTelefono()%></td>
                </tr><% } %>
            </tbody>
        </table>
            <br><br>
        <form action="index.jsp">
            <button type="submit">Volver</button>
        </form>
        
    </body>
</html>
