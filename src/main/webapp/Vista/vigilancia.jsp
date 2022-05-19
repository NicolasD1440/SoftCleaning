<%-- 
    Document   : vigilancia
    Created on : 10/05/2022, 5:12:00 p. m.
    Author     : PcGamerPro
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
     
        <div class="container">
            <div class="row">
                <div class="col">   
                    <br>
                    <form action="vigilancia.jsp" method="post" >
                      <input class="btn btn-primary" type="submit" name="sensor-p"  value="Sensor de peso" onClick="sensor()">
                      <input class="btn btn-primary" type="submit" name="sensor-t"  value="Sensor de temperatura">
                      <input class="btn btn-primary" type="submit" name="sensor-gps"  value="Sensor GPS">
                      <input class="btn btn-primary" type="submit" name="sensor-h"  value="Sensor de humedad">
                      <input class="btn btn-primary" type="submit" name="sensor-a"  value="Sensor de apertura">
                      <input class="btn btn-primary" type="submit" name="sensor-prox"  value="Sensor de proximidad">
                           
                    </form>
                    <br>
                       
                       
                        
                   
                    <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>Descripcion</th>
                    <th>Fecha</th>
                    <th>Hora</th>
                    <th>Tipo de eventualidad</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    
         
                    <%
                         
                         
                       if (request.getParameter("sensor-p") != null) {
                       out.println("<td>Se movio una caneca</td>");
                       out.println("<td>11/05/2022</td>");
                       out.println("<td> 10:00 pm</td>");
                       out.println("<td>sensor de movimiento</td>");
                             }else{
                             
                        }
                         
                      
                     if (request.getParameter("sensor-t") != null) {
                       out.println("<td>La temperatura puede ser peligrosa</td>");
                       out.println("<td>11/05/2022</td>");
                       out.println("<td> 10:02 pm</td>");
                       out.println("<td>sensor de temperatura</td>");
                             }else{
                             
                        }
                         
                             
                     if (request.getParameter("sensor-gps") != null) {
                       out.println("<td>La caneca fue movida de su posicion</td>");
                       out.println("<td>11/05/2022</td>");
                       out.println("<td> 10:08 pm</td>");
                       out.println("<td>sensor GPS</td>");
                             }else{
                             
                        }
                         
                                if (request.getParameter("sensor-h") != null) {
                       out.println("<td>Niveles criticos de humedad</td>");
                       out.println("<td>11/05/2022</td>");
                       out.println("<td> 10:15 pm</td>");
                       out.println("<td>sensor de humedad</td>");
                             }else{
                             
                        }
                         
                             
                        if (request.getParameter("sensor-a") != null) {
                       out.println("<td>Apertura no autorizada</td>");
                       out.println("<td>11/05/2022</td>");
                       out.println("<td> 10:20 pm</td>");
                       out.println("<td>sensor de apertura</td>");
                             }else{
                             
                        }
                         
                              if (request.getParameter("sensor-prox") != null) {
                       out.println("<td>Un objeto fue insetado</td>");
                       out.println("<td>11/05/2022</td>");
                       out.println("<td> 10:25 pm</td>");
                       out.println("<td>sensor de proximidad</td>");
                             }else{
                             
                        }
                             
                       
                       
                     %>
                </tr>
            </tbody>
        </table>
                </div>
            </div>
        </div>
        
    </body>
</html>
