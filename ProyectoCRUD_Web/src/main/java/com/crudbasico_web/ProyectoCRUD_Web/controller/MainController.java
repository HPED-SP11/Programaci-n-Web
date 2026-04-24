package com.crudbasico_web.ProyectoCRUD_Web.controller;

import com.crudbasico_web.ProyectoCRUD_Web.Services.AlumnosService;
import com.crudbasico_web.ProyectoCRUD_Web.model.AlumnosModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public String mostrarSelect(Model model){
        AlumnosModel alumno = new AlumnosModel();

        model.addAttribute("alumno", alumno);
        //model.addAttribute("alumno", alumnosService.getAlumnosByCodigo(codigo));
        return "public_html/select";
    }
    @PostMapping("/select")
    public String getAlumnoByCodigo(@RequestParam("codigo") int codigo, Model model) {
        List<AlumnosModel> resultados = (List<AlumnosModel>) alumnosService.getAlumnosByCodigo(codigo);

        AlumnosModel alumnoBusqueda;

        if (resultados != null && !resultados.isEmpty()) {
            alumnoBusqueda = resultados.get(0);

        } else {
            alumnoBusqueda = new AlumnosModel();
        }

        model.addAttribute("alumno", alumnoBusqueda);

        return "public_html/select";
    }

    @GetMapping("/update")
    private String mostrarUpdate(Model model){
        model.addAttribute("alumno", new AlumnosModel());
        return "public_html/update";
    }
    @PostMapping("/update/buscar")
    public String buscarParaUpdate(@RequestParam("codigo") int codigo, Model model,
                                   @RequestParam(value = "from", defaultValue = "public_html/update") String from) {
        List<AlumnosModel> resultados = (List<AlumnosModel>) alumnosService.getAlumnosByCodigo(codigo);
        AlumnosModel alumnoBusqueda = (resultados != null && !resultados.isEmpty())
                ? resultados.get(0)
                : new AlumnosModel();

        model.addAttribute("alumno", alumnoBusqueda);

        if (from.contains("vistaLista")) {
            model.addAttribute("showModal", true);
            model.addAttribute("alumnos", alumnosService.getAlumnos());
        }

        return from;
    }
    @PostMapping("/update/guardar")
    public String guardarUpdate(@ModelAttribute("alumno") AlumnosModel alumno,
                                @RequestParam(value = "from", defaultValue = "/lista") String from) {
        alumnosService.updateAlumno(alumno);
        return "redirect:"+from;
    }

    @GetMapping("/delete")
    public String mostrarDelete(Model model){
        model.addAttribute("alumno", new AlumnosModel());
        return "public_html/delete";
    }
    @PostMapping("/delete/eliminar")
    public String deleteAlumno(@RequestParam("codigo") int codigo, /*Model model*/
                               @RequestParam(value = "from", defaultValue = "/lista") String from) {
        alumnosService.deleteAlumnoByCodigo(codigo);
        return "redirect:"+from;
    }

    @GetMapping("/lista")
    public String mostrarLista(Model model) {
        model.addAttribute("alumnos", alumnosService.getAlumnos());
        model.addAttribute("alumno", new AlumnosModel());
        return "public_html/vistaLista";
    }
    //@PostMapping("/lista/alumnos")
    //publicString

}
