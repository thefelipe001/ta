
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class PersonaDAO {
    PreparedStatement ps;
    ResultSet rs;
    Conexion c=new  Conexion();
    Connection  con;
    
    public List listar(){
    
    List<Persona>lista=new ArrayList();
    String sql="select * from PERSONA";
    try{
    con=c.conectar();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next())
    {
    Persona p=new Persona();
    p.setId(rs.getString(1));
    p.setNom(rs.getString(2));
    p.setCorreo(rs.getString(3));
    p.setTel(rs.getString(4));
   lista.add(p);

    }
    }
    catch(Exception e)
    {
    
    
    }
    
    return lista;
    }
}
