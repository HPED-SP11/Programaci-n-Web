package com.proyectoweb.mvcbasededatosweb.repository;

import com.proyectoweb.mvcbasededatosweb.model.Estudiantes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.*;

public class EstudianteInsert implements IntEstudianteInsert{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Estudiantes> findAll() {
        String SQL="SELECT * FROM Alumnos WHERE codigo = ?";
        return JdbcTemplate.query(SQL, BeanPropertyRowMapper.newInstance(Estudiantes.class));
    }

    @Override
    public Estudiantes save(Estudiantes estudiantes) {
        String SQL="INSERT INTO Alumnos VALUES(?,?,?)";
        return JdbcTemplate.update(SQL, new Object[]{estudiantes.getCodigo(), estudiantes.getNombre(), estudiantes.getDomicilio()});
    }

    @Override
    public Estudiantes update(Estudiantes estudiantes) {
        String SQL="UPDATE Alumnos set nombre = ?, domicilio = ? WHERE codigo = ?";
        return JdbcTemplate.update(SQL, new Object[]{estudiantes.getCodigo(), estudiantes.getNombre(), estudiantes.getDomicilio()});
    }

    @Override
    public int deleteById(int id) {
        String SQL = "UPDATE Alumnos SET stuatus = 0 WHERE codigo = ?";
        return JdbcTemplate.update(SQL, new Object[]{id});
    }
}
