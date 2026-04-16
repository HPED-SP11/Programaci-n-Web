/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
import java.sql.*;
import java.util.*;

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
                    datosAlumnos =  "<table border='0' class='tabla-select'>\n" +
                                        "<thead>\n"+
                                            "<tr>\n" +
                                                "<th>Código</th>\n" +
                                                "<th>Nombre</th>\n" +
                                                "<th>Domicilio</th>\n" +
                                            "</tr>\n" +
                                        "</thead>\n"+
                                        "<tbody>\n"+
                                            "<tr>\n" +
                                                "<td>"+coudeg+"</td>\n" +
                                                "<td>"+name+"</td>\n" +
                                                "<td>"+dom+"</td>\n" +
                                            "</tr>\n" +
                                        "</tbody>\n"+
                                    "</table>";
                }
                else {
                    datosAlumnos="No hay ningun alumno con el código que ingresaste: > " + codigo;
                }
            }
        }
        return datosAlumnos;
    }
    public ArrayList<Alumno> consultarTodos() throws SQLException {
        ArrayList<Alumno> lista = new ArrayList<>();
        String sql = "SELECT * FROM alumnos";

        try (Connection con = Conexion.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Alumno a = new Alumno();
                a.setCodigo(rs.getInt("codigo"));
                a.setNombre(rs.getString("nombre"));
                a.setDomicilio(rs.getString("domicilio"));
                lista.add(a);
            }
        }
        return lista;
    }
    public String modificarAlumno(int codigo) throws SQLException {
        String sql = "select codigo, nombre, domicilio from alumnos where codigo = ?";
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
                    datosAlumnos =  "<table border='0' class='tabla-editar'>\n" +
                                        "<thead>\n"+
                                            "<tr>\n" +
                                                "<th>Código</th>\n" +
                                                "<th>Nombre</th>\n" +
                                                "<th>Domicilio</th>\n" +
                                            "</tr>\n" +
                                        "</thead>\n"+
                                        "<tbody>\n"+
                                            "<tr>\n" +
                                                "<td id='celdaCodigo'>"+coudeg+"</td>\n" +
                                                "<td id='celdaNombre'>"+name+"<button type='button' id='editName' class='boton-editar'><i class='bi bi-pencil-square'></i></button></td>\n" +
                                                "<td id='celdaDomicilio'>"+dom+"<button type='button' id='editDom' class='boton-editar'><i class='bi bi-pencil-square'></i></button></td>\n" +
                                            "</tr>\n" +
                                        "</tbody>\n"+
                                    "</table>";
                }
                else {
                    datosAlumnos="No hay ningun alumno con el código que ingresaste: > " + codigo;
                }
            }
        }
        return datosAlumnos;
    }
    public boolean actualizarNombre(int codigo, String nombre) throws SQLException{

        String sql = "update alumnos set nombre = ? where codigo = ?";
        
        try (Connection con = Conexion.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, nombre);    
                pstmt.setInt(2, codigo);

                return pstmt.executeUpdate() > 0;
        }
    }
    public boolean actualizarDomicilio(int codigo, String domicilio) throws SQLException{

        String sql = "update alumnos set domicilio = ? where codigo = ?";
        
        try (Connection con = Conexion.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, domicilio);    
                pstmt.setInt(2, codigo);

                return pstmt.executeUpdate() > 0;
        }
    }
    
    
    public boolean eliminarAlumno(int codigo) throws SQLException {
        String sql = "delete from alumnos where codigo = ?";
        try (Connection con = Conexion.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, codigo);
            return pstmt.executeUpdate() > 0;
        }
    }
}
