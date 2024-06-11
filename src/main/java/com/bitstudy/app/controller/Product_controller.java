package com.bitstudy.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Product_controller {
    @GetMapping("/product")
    public String index() {return "product";}
}
