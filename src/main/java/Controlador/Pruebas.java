package Controlador;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Pruebas {
    public static void main(String [] args){
        usuarioConecta conex = new Controlador.usuarioConecta();
        int id = 1;
        String nombre = "Frank Castillo";
        String direccion = "Calle 131 #8-20";
        String correo = "fjaire@hotmail.com";
        String sql = "INSERT INTO usuario (id, nombre, direccion, correo) VALUES ('"+id+"', '"+nombre+"', '"+direccion+"', '"+correo+"');";
        try {
            conex.insertar(sql);
        } catch (SQLException ex) {
            Logger.getLogger(Pruebas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
}
