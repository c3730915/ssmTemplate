package org.jayden.controller;

import org.jayden.domain.Word;
import org.jayden.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

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
//        List<Word> list = new ArrayList<>();
//        list.add(wordbyId);

//        List<Word> list = new LinkedList<>()
        modelAndView.addObject("words",wordbyId);
        modelAndView.setViewName("/tmp/main");
        return modelAndView;

    }
    @RequestMapping("/findWords")
    public ModelAndView findWords(){
        int id =Integer.parseInt( httpServletRequest.getParameter("id"));
        System.out.println(id);
        ModelAndView modelAndView = new ModelAndView();
        List<Word> words = wordService.findByNum(id);
        modelAndView.addObject("words",words);
        modelAndView.setViewName("ShowTableWords");
        return modelAndView;

    }

}
