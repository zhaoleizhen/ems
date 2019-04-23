package com.baizhi.controller;

import com.baizhi.entity.Emp;
import com.baizhi.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("emp")
public class EmpController {

    @Autowired
    private EmpService service;

    @RequestMapping("findAll")
    public List<Emp> findAll(){
        return service.findAll();
    }
    @RequestMapping("add")
    public void add(Emp emp){
        emp.setCreatetime(new Date());
        emp.setId(UUID.randomUUID().toString());
        service.add(emp);
    }

}
