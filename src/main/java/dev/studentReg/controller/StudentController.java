package main.java.dev.studentReg.controller;

import main.java.dev.studentReg.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/students")
public class StudentController {

    @GetMapping
    public String showAllStudents(Model model) {
        // Fetch all students and add to the model
        return "students";
    }

    @GetMapping("/{id}")
    public String showStudentDetails(@PathVariable int id, Model model) {
        // Fetch student by id and add to the model
        return "studentDetails";
    }

    @GetMapping("/create")
    public String showCreateStudentForm(Model model) {
        model.addAttribute("student", new Student());
        return "createStudent";
    }

    @PostMapping("/create")
    public String createStudent(@ModelAttribute("student") Student student) {

        return "redirect:/students";
    }

    @GetMapping("/{id}/edit")
    public String editStudentForm(@PathVariable int id, Model model) {
        // Fetch student by id and add to the model
        return "editStudent";
    }

    @PostMapping("/{id}/edit")
    public String editStudent(@PathVariable int id, @Valid @ModelAttribute("student") Student student,
                              BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "editStudent";
        }

        // Update the student and redirect to details page
        return "redirect:/students/" + id;
    }

    @GetMapping("/{id}/delete")
    public String deleteStudent(@PathVariable int id) {
        // Delete the student and redirect to the students list page
        return "redirect:/students";
    }
}

