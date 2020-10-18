package com.example.dataprocess.dao;

import com.example.dataprocess.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {
    @Select("select * from user;")
    public List<User> selectAll();
    @Select("select * from user where id =#{id}")
    public User selectById(String id);
    @Update("update user set name=#{name},password=#{password} where id =#{id};")
    public int update(User user);
    @Delete("delect from user where id =#{id}")
    public int deleteUserById(String id);
    @Insert("insert into user (id,name,password) values(null,#{name},#{password});")
    public int insertUser(User user);
}
