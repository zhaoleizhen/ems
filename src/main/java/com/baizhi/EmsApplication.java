package com.baizhi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = "com.baizhi.dao")
public class EmsApplication {

    public static void main(String[] args) {
        System.out.println();
        SpringApplication.run(EmsApplication.class, args);
    }

}
