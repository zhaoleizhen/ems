package com.baizhi.service;

import com.baizhi.entity.Emp;
import com.baizhi.entity.User;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface EmpService {
    List<Emp> findAll();


    void delete(Emp emp);


    void update(Emp emp);

}
