package com.example.dataprocess.controller;

import com.example.dataprocess.entity.User;
import com.example.dataprocess.service.UserService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class UserController {
    @Resource
    UserService userService;
    @RequestMapping("/selectAll")
    public List<User> selectAll(){
        return userService.selectAll();
    }
    @RequestMapping("/insertUser")
    public int insertUser( ){
       return userService.insertUser();
    }
    ///////////////////以下没有测试过
    @RequestMapping("/selectById")
    public User selectById(@RequestBody String id){
        return userService.selectById(id);
    };
    @RequestMapping("/update")
    public int update(@RequestBody User user){
        return userService.update(user);
    }
    @RequestMapping("/deleteUserById")
    public int deleteUserById(@RequestBody String id){
        return userService.deleteUserById(id);
    }
}
