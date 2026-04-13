package com.programacionweb.ProyectoMySQL_WebMVC.modelo;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "alumnos")
@Data
public class Estudiantes {
    @Id
    private Integer codigo;
    private String nombre;
    private String domicilio;
}
