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
}
