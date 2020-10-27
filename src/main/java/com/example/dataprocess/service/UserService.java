package com.example.dataprocess.service;

import com.alibaba.fastjson.JSON;
import com.example.dataprocess.dao.UserMapper;
import com.example.dataprocess.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
@Slf4j
public class UserService {
    @Resource
    UserMapper userMapper;
    public List<User> selectAll(){
        List<User> users = userMapper.selectAll();
        for (User user:users){
            String s = JSON.toJSONString(user);
            log.info(s);
        }
        return users;
    }
    public User selectById(String id){ return userMapper.selectById(id); };
    public int update(User user){
        return userMapper.update(user);
    }
    public int deleteUserById(String id){
            return userMapper.deleteUserById(id);
    }
    public int insertUser(){
        int i=0;
        for (;i<100;i++){
            userMapper.insertUser(new User().setName(UUID.randomUUID().toString().substring(0,10))
                    .setPassword(UUID.randomUUID().toString().substring(0,10)));
        }
        log.info("success insert count:"+i);
        return i;
    }
}
