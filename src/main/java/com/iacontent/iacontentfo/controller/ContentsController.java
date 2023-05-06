package com.iacontent.iacontentfo.controller;

import com.iacontent.iacontentfo.model.Contents;
import com.iacontent.iacontentfo.service.ContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentsController {
    @Autowired
    private ContentsService contentsService;

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("contents", contentsService.findAll());

        modelAndView.setViewName("Home");

        return modelAndView;
    }

    @GetMapping("/fiche/{key}")
    public ModelAndView fiche(@PathVariable Integer key) {
        Contents contents = contentsService.findById(key);

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("Fiche");

        modelAndView.addObject("contents", contents);

        return modelAndView;
    }
}
