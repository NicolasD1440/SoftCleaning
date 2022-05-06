<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <center>
            <div class="container">
                <form class="form-group" method="POST" action="beanUsuario.jsp">
                    <legend><strong>FORMULARIO DE REGISTRO:</strong></legend>
                    <label for="lbl_id">Codigo:</label>
                    <input class="form-control" type="text" name="txt_id" id="txt_id" placeholder="Ejemplo:001" required="true"></input>
                    <label for="lbl_nombre">Nombre:</label>
                    <input class="form-control" type="text" name="txt_nombre" id="txt_nombre" placeholder="Ejemplo:Frank Castillo" required="true"></input>            
                    <label for="lbl_direccion">Direcci&oacute;n:</label>
                    <input class="form-control" type="text" name="txt_direccion" id="txt_direcccion" placeholder="Ejemplo:calle 25 #8-23" required="true"></input>  
                    <label for="lbl_correo">Correo</label>
                    <input class="form-control" type="email" name="txt_correo" id="txt_correo" placeholder="Ejemplo:jairo@gmail.com" required="true"></input> 
                    <input class="btn btn-primary" type="submit" name="btn_enviar" id="btn_enviar" value="Enviar">
                    <input class="btn btn-success" type="reset" name="btn_limpiar" id="btn_limpiar" value="Limpiar">
                </form>
                <iframe name="escritorio"></iframe>
            </div>
        </center>
    </body>
</html>
