package com.example.MVC_ProyectoWebDB.model;

import lombok.Getter;
import lombok.Setter;

@Document(collection = "alumnos")
public class Alumno {
    @Getter
    @Setter
    private String id;

    private Integer codigo;
    private String nombre;
    private String domicilio;

    public Alumno() {
    }

    public Alumno(String id, Integer codigo, String nombre, String domicilio) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.domicilio = domicilio;
    }

    public Integer getCodigo() {
        return codigo;
    }

}