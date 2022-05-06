package Modelo;

import java.sql.SQLException;

public class DAOUsuario extends beanUsuario{
    Controlador.usuarioConecta conecta;

    public DAOUsuario() {
        conecta = new Controlador.usuarioConecta();
    }
    
    public boolean insertar(){
        String sql = "INSERT INTO usuario (id, nombre, direccion, correo) VALUES ('" + super.getId() + "', '" + super.getNombre() + "', '" + super.getDireccion() + "', '" + super.getCorreo()+"');";
        try {
            return conecta.insertar(sql);
        } catch (SQLException ex) {
            System.out.println("No se podido insertar el registro...");
            return false;
        }
    }
}
