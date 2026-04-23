package com.crudbasico_web.ProyectoCRUD_Web.Services;

import com.crudbasico_web.ProyectoCRUD_Web.model.AlumnosModel;

import java.util.*;

public interface IAlumnosService {
    List<AlumnosModel> getAlumnos();

    List<AlumnosModel> getAlumnosByCodigo(int codigo);

    AlumnosModel saveAlumno(AlumnosModel alumno);

    AlumnosModel getAlumnoById(int id);

    AlumnosModel updateAlumno(AlumnosModel alumno);

    void deleteAlumnoByCodigo(int codigo);
}
