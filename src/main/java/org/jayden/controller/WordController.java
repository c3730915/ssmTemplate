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
    /**
     * Controller 负责处理前端访问到当前request目录下的请求
     */
    @Autowired
    HttpServletRequest httpServletRequest;
    @Autowired
    private WordService wordService;
    @RequestMapping("/findByid")
    public ModelAndView findByid(){
        /**
         * 根据id返回单个单词
         */
        int id;
        if( httpServletRequest.getParameter("id")!=null)
        {
            id =Integer.parseInt( httpServletRequest.getParameter("id"));
        }
        else {
            id =100;//无参数的默认id

        }

        System.out.println(id);
        ModelAndView modelAndView = new ModelAndView();
        Word wordbyId = wordService.findById(id);
        modelAndView.addObject("words",wordbyId);
        modelAndView.setViewName("/tmp/main");
        return modelAndView;

    }
    @RequestMapping("/findByEngname")
    public ModelAndView findByEngname(){
        /**
         * 根据单词名称返回查询到的单词列表
         */
        String wordName =null;
        try {
            if (httpServletRequest.getParameter("name")!=null){

                wordName = httpServletRequest.getParameter("name");
            }
            else {
                wordName =null;
            }
        }
        catch (Exception e){
            System.out.println(e);
        }

        List<Word> words = wordService.findByEngName(wordName);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("ShowTableWords");
        modelAndView.addObject("words",words);
        return modelAndView;
    }

    @RequestMapping("/findByCnname")
    public ModelAndView findByCnname(){
        /**
         * 根据单词名称返回查询到的单词列表
         */
        String wordName =null;
        try {
            if (httpServletRequest.getParameter("name")!=null){

                wordName = httpServletRequest.getParameter("name");
            }
            else {
                wordName =null;
            }
        }
        catch (Exception e){
            System.out.println(e);
        }

        List<Word> words = wordService.findByCnName(wordName);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("ShowTableWords");
        modelAndView.addObject("words",words);
        return modelAndView;
    }

}
