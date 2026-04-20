package com.crudbasico_web.ProyectoCRUD_Web.Repository;

import com.crudbasico_web.ProyectoCRUD_Web.model.AlumnosModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.*;

public interface IAlumnosRepository extends JpaRepository<AlumnosModel, Integer> {
    @Query("FROM AlumnosModel a WHERE a.codigo = :codigo")
    public List<AlumnosModel> findByCodigoContaining(int codigo);
}
