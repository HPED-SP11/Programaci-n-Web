/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
import java.sql.*;

/**
 *
 * @author hpede
 */
public class AlumnoDAO {
    public boolean insertarAlumno(int codigo, String nombre, String domicilio) throws SQLException{

        String sql = "insert into alumnos (codigo, nombre, domicilio) VALUES (?, ?, ?)";
        
        String mensajeFinal="";
        
        try (Connection con = Conexion.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setInt(1, codigo);
                pstmt.setString(2, nombre);
                pstmt.setString(3, domicilio);

                return pstmt.executeUpdate() > 0;
        }
    }
    public String selectAlumno(int codigo) throws SQLException {
        String sql = "select * from alumnos where codigo = ?";
        String datosAlumnos="";
        
        try(Connection con = Conexion.getConnection();
                PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1,codigo);
            
            try(ResultSet rs = pstmt.executeQuery()){
                if(rs.next()) {
                    int coudeg  = rs.getInt(1);
                    String name=rs.getString(2);
                    String dom = rs.getString(3);
                    //datosAlumnos = "Código: " + coudeg + " | Nombre: " + name + " | Domicilio: " + dom;
                    datosAlumnos =  "<table  border='1'>\n" +
                                        "<tr>\n" +
                                            "<th>Código</th>\n" +
                                            "<th>Nombre</th>\n" +
                                            "<th>Domicilio</th>\n" +
                                        "</tr>\n" +
                                        "<tr>\n" +
                                            "<td>"+coudeg+"</td>\n" +
                                            "<td>"+name+"</td>\n" +
                                            "<td>"+dom+"</td>\n" +
                                        "</tr>\n" +
                                    "</table>";
                }
                else {
                    datosAlumnos="No hay ningun alumno con el código que ingresaste: > " + codigo;
                }
            }
        }
        return datosAlumnos;
    }
}
