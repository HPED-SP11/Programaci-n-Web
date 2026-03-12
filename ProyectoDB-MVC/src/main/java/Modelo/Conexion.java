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
public class Conexion {
    private static String user = "root";
    private static String psswd = "root";
    private static String url = "jdbc:mysql://localhost:3306/escuela?zeroDateTimeBehavior=CONVERT_TO_NULL";
    
    public static Connection getConnection() throws SQLException {
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch(ClassNotFoundException ex) {
            throw new SQLException("No se encontró el driver JDBC: " + ex.getMessage());
        }
        
        return (Connection) DriverManager.getConnection(url, user, psswd);
    }
}
