package com.crudbasico_web.ProyectoCRUD_Web.Services;

import com.crudbasico_web.ProyectoCRUD_Web.Repository.IAlumnosRepository;
import com.crudbasico_web.ProyectoCRUD_Web.model.AlumnosModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlumnosService implements IAlumnosService {

    private IAlumnosRepository alumnosRepository;

    public AlumnosService(IAlumnosRepository alumnosRepository) {
        this.alumnosRepository = alumnosRepository;
    }

    @Override
    public List<AlumnosModel> getAlumnos() {
        return alumnosRepository.findAll();
    }

    @Override
    public List<AlumnosModel> getAlumnosByCodigo(int codigo) {
        return alumnosRepository.findByCodigoContaining(codigo);
    }

    @Override
    public AlumnosModel saveAlumno(AlumnosModel alumno) {
        return alumnosRepository.save(alumno);
    }

    @Override
    public AlumnosModel getAlumnoById(int id) {
        return alumnosRepository.findById(id).get();
    }

    @Override
    public AlumnosModel updateAlumno(AlumnosModel alumno) {
        return alumnosRepository.save(alumno);
    }

    @Override
    public void deleteAlumnoByCodigo(int codigo) {
        alumnosRepository.deleteById(codigo);
    }
}
