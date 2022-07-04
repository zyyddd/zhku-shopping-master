//@Time:2021/12/6 15:14
//@Author:aFun

package indi.mapper.impl;

import indi.domain.User;
import indi.mapper.LoginMapper;
import indi.util.JDBCUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class LoginMapperImpl implements LoginMapper {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public User loginByEmail(User user) {
        // 传入的是Email ！！！
        String sql="select * from user where email=? and pwd=?";
        User loginUser=null;
        try {
            loginUser = template.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), user.getEmail(), user.getPwd());
        }catch (EmptyResultDataAccessException e){
            loginUser=null;
        }
        return loginUser;
    }

    @Override
    public User loginByPhoneNum(User user) {
        // 传入的是PhoneNum ！！！
        String sql="select * from user where phoneNum=? and pwd=?";
        User loginUser=null;
        try {
            loginUser = template.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), user.getPhoneNum(), user.getPwd());
        }catch (EmptyResultDataAccessException e){
            loginUser=null;
        }
        return loginUser;
    }

    @Override
    public boolean alterMsg(User user) {
        String sql="update user set phoneNum=?,email=?,pwd=?,name=?,gender=?,address=? where _id=?";
        int update = template.update(sql, user.getPhoneNum(), user.getEmail(), user.getPwd(), user.getName(),
                user.getGender(), user.getAddress(),user.get_id());

        return update>0?true:false;
    }

    @Override
    public boolean regist(User user) {

        String sql2="insert into user(phoneNum,email,pwd) values(?,?,?)";
        int update=0;
        try{
            update = template.update(sql2, user.getPhoneNum(), user.getEmail(),
                    user.getPwd());
        }catch (Exception e){
            return false;
        }

        return update>0?true:false;
    }

}
