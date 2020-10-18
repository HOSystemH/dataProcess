package com.example.dataprocess.service;

import com.example.dataprocess.dao.UserMapper;
import com.example.dataprocess.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class UserService {
    @Resource
    UserMapper userMapper;
    public List<User> selectAll(){
        return userMapper.selectAll();
    }
    public User selectById(String id){
        return userMapper.selectById("1");
    };
    public int update(User user){
        return userMapper.update(user);
    }
    public int deleteUserById(String id){
        return deleteUserById("1");
    }
    public int insertUser(){
        int i=0;
        for (;i<100;i++){
            userMapper.insertUser(new User().setName(UUID.randomUUID().toString().substring(0,10))
                    .setPassword(UUID.randomUUID().toString().substring(0,10)));
        }
        System.out.println("success insert count:"+i);
        return i;
    }
}
