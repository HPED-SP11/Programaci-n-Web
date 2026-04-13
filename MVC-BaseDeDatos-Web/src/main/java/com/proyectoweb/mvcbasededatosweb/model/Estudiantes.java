package com.proyectoweb.mvcbasededatosweb.model;

import lombok.Data;
import org.springframework.boot.persistence.autoconfigure.EntityScan;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@EntityScan
@Table(name="alumnos")
@Data

public class Estudiantes {
    @Id
    private Integer codigo;
    private String nombre;
    private String domicilio;
}
