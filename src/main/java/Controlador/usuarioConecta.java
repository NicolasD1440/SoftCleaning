package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class usuarioConecta {
    Connection con;
    Statement st;
    ResultSet rs;

    public usuarioConecta() {
       try {
           Class.forName("org.postgresql.Driver");
           System.out.println("Cargo el Driver...");
       } catch (ClassNotFoundException ex) {
           System.out.println("Problemas con el Driver");
       }
        try {
            con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/aseo", "postgres", "123456");
            System.out.println("Se conectó...");
        } catch (SQLException ex) {
             System.out.println("Problemas para conectarnos...");
        }
    }
    
    public boolean insertar(String sql) throws SQLException{
        System.out.println(sql);
        st = con.createStatement();
        return st.execute(sql);
    }
    
    
}
