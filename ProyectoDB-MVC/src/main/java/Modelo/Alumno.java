/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author hpede
 */
public class Alumno {
    private int codigo;
    private String nombre;
    private String domicilio;
    
    public Alumno() {
        
    }
    
    public Alumno(int codigo, String nombre, String domicilio) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.domicilio = domicilio;
    }
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }
}
