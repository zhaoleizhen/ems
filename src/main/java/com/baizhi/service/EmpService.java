package com.baizhi.service;

import com.baizhi.entity.Emp;

import java.util.List;

public interface EmpService {
    List<Emp> findAll();


    void delete(Emp emp);


    void update(Emp emp);
    void add(Emp emp);

}
