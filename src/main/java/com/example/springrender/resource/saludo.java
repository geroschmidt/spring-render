package com.example.springrender.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class saludo {

    @GetMapping("/saludar")
    public String saludar() {
        return "Hola Mundo!";
    }
}
