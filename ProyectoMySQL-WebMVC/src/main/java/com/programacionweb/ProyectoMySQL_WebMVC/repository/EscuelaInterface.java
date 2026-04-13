package com.programacionweb.ProyectoMySQL_WebMVC.repository;

import com.programacionweb.ProyectoMySQL_WebMVC.modelo.Estudiantes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EscuelaInterface extends JpaRepository<Estudiantes, Integer> {
}
