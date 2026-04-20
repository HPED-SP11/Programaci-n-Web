package com.crudbasico_web.ProyectoCRUD_Web.controller;

import com.crudbasico_web.ProyectoCRUD_Web.Services.AlumnosService;
import com.crudbasico_web.ProyectoCRUD_Web.model.AlumnosModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {

    private AlumnosService alumnosService;

    public MainController(AlumnosService alumnosService) {
        this.alumnosService = alumnosService;
    }

    @GetMapping("/index")
    public String mostrarLogin(){
        return "index";
    }
    @GetMapping("/insert")
    public String mostrarInsert(Model model){
        AlumnosModel alumno = new AlumnosModel();

        model.addAttribute("alumno", alumno);

        return "public_html/insert";
        //return "public_html/insert";
    }
    @PostMapping("/insert")
    public String saveAlumno(@ModelAttribute("alumno") AlumnosModel alumno) {
        alumnosService.saveAlumno(alumno);
        return "redirect:/insert";
    }

    @GetMapping("/select")
    public String mostrarSelect(){
        return "public_html/select";
    }
    @GetMapping("/update")
    public String mostrarUpdate(){
        return "public_html/update";
    }
    @GetMapping("/delete")
    public String mostrarDelete(){
        return "public_html/delete";
    }
}
