package org.jayden.controller;

import org.jayden.domain.Word;
import org.jayden.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/word")
public class WordController {
    @Autowired
    HttpServletRequest httpServletRequest;
    @Autowired
    private WordService wordService;
    @RequestMapping("/find")
    public ModelAndView findByid(){
        int id =Integer.parseInt( httpServletRequest.getParameter("id"));
        System.out.println(id);
        ModelAndView modelAndView = new ModelAndView();
        Word wordbyId = wordService.findById(id);
        modelAndView.addObject("word",wordbyId);
        modelAndView.setViewName("ShowTableWords");
        return modelAndView;

    }

}
