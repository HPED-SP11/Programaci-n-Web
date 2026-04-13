package com.programacionweb.ProyectoMySQL_WebMVC.controlador;

import com.programacionweb.ProyectoMySQL_WebMVC.modelo.Estudiantes;
import com.programacionweb.ProyectoMySQL_WebMVC.repository.EscuelaInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
public class ManejoAlumnos {
    @Autowired
    private EscuelaInterface repository;

    @GetMapping("/insertar-alumno")
    public String irAInsertar() {
        return "public_html/insert";
    }
    @GetMapping("/seleccionar-alumno")
    public String irASeleccionar() {
        return "public_html/select";
    }
    @GetMapping("/actualizar-alumno")
    public String irAActualizar() {
        return "public_html/update";
    }
    @GetMapping("/eliminar-alumno")
    public String irAEliminar() {
        return "public_html/delete";
    }

    @PostMapping("/insertar-alumno")
    public String insertar(@ModelAttribute Estudiantes estudiante, Model model) {
        try {
            repository.save(estudiante);
            model.addAttribute("resultado", "Los datos de " + estudiante.getNombre() + " se registraron correctamente");
        } catch (Exception e) {
            model.addAttribute("resultado", "Error: " + e.getMessage());
        }

        return "public_html/insert";
    }

    @PostMapping("/seleccionar-alumno")
    public String buscar(@RequestParam Integer codigo, Model model) {
        Optional<Estudiantes> estudiante = repository.findById(codigo);
        if (estudiante.isPresent()) {
            model.addAttribute("alumno", estudiante.get());
        } else {
            model.addAttribute("resultado", "No hay ningún alumno con el código: " + codigo);
        }
        return "public_html/select";
    }

    /*@PostMapping("/actualizar-alumno")
    public String actualizar(@RequestParam Integer codigo, Model model) {
        Optional<Estudiantes> estudiante = repository.findById(codigo);
        if (estudiante.isPresent()) {
            model.addAttribute("alumno", estudiante.get());
        } else {
            model.addAttribute("resultado", "No hay ningún alumno con el código: " + codigo);
        }
        return "public_html/update";
    }

    @PostMapping("/eliminar-alumno")
    public String eliminar(@RequestParam Integer codigo, Model model) {
        Optional<Estudiantes> estudiante = repository.findById(codigo);
        if (estudiante.isPresent()) {
            model.addAttribute("alumno", estudiante.get());
        } else {
            model.addAttribute("resultado", "No hay ningún alumno con el código: " + codigo);
        }
        return "public_html/delete";
    }*/
}
