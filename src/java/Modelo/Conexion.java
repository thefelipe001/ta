
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
     //Datos para la Conexion
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
    String user="ESTUDIANTE";
    String pass="123";
    
    //Metodo de la Conexion
    public Connection conectar()
    {
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection(url,user,pass);
    
    }
    catch(Exception e)
    {
    
    }
    return con;
    }
}
