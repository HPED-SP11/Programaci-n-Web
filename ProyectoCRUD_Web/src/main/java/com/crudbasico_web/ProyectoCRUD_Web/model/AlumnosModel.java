package com.crudbasico_web.ProyectoCRUD_Web.model;

import jakarta.persistence.*;

@Entity
@Table(name="alumnos")
public class AlumnosModel {
    @Id
    @Column(name="codigo", nullable = false)
    private int codigo;

    @Column(name="nombre", nullable = false)
    private String nombre;

    @Column(name="domicilio", nullable = false)
    private String domicilio;

    public AlumnosModel() {}

    public AlumnosModel(int codigo, String nombre, String domicilio) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.domicilio = domicilio;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
}
