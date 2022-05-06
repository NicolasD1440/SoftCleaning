<%-- 
    Document   : beanUsuario
    Created on : 30/04/2022, 7:25:52 p. m.
    Author     : fjair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bean usuario</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("txt_id"));
            String nombre = request.getParameter("txt_nombre");
            String direccion = request.getParameter("txt_direccion");
            String correo = request.getParameter("txt_correo");
        %>
        <jsp:useBean id="beanUsuario" scope="session" class="Modelo.DAOUsuario" >
            <jsp:setProperty name="beanUsuario" property="id" 
            value="<%= id %>"/>
            <jsp:setProperty name="beanUsuario" property="nombre" 
            value="<%= nombre %>"/>
            <jsp:setProperty name="beanUsuario" property="direccion" 
            value="<%= direccion %>"/>
            <jsp:setProperty name="beanUsuario" property="correo" 
            value="<%= correo %>"/>
            <strong>DATOS DEL USUARIO: </strong><BR>
            ID, <jsp:getProperty name="beanUsuario" property="id" /><br>
            NOMBRE, <jsp:getProperty name="beanUsuario" property="nombre" /><br>
            DIRECCION, <jsp:getProperty name="beanUsuario" property="direccion" /><br>         
            CORREO, <jsp:getProperty name="beanUsuario" property="correo" /><br> 
            
            <% 
            if (beanUsuario.insertar() == false){
                out.print("Se insertó correctamente");
            }
            else{
                out.print("No se insertó correctamente");
            }    
            %>
        </jsp:useBean>
    </body>
</html>
