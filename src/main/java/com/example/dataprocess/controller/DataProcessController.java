package com.example.dataprocess.controller;

import com.example.dataprocess.service.DataProcessService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class DataProcessController {
    @Resource
    DataProcessService dataProcessService;
    @RequestMapping("/")
    public String dataProcess(){
        return dataProcessService.dataProcess();
    }
}
