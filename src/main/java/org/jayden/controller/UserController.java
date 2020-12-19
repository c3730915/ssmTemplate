package org.jayden.controller;

import org.jayden.domain.Account;
import org.jayden.domain.User;
import org.jayden.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/login")
public class UserController {
    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/verify",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String login(User logUser){
        User result = accountService.login(logUser);
        if (result==null)
        {
            System.out.println("error password");
        }
        else
        {
            System.out.println("Success");
        }


        return "save successfully";
    }
}
