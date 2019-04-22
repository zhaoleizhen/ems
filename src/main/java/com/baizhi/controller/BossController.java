package com.baizhi.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("boss")
public class BossController {
    @RequestMapping("login")
    public String login(){
        System.out.println("login");
        return "success";
    }

}
