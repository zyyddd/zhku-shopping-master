//@Time:2021/12/6 16:42
//@Author:aFun

package indi.service.impl;

import indi.domain.User;
import indi.mapper.LoginMapper;
import indi.mapper.impl.LoginMapperImpl;
import indi.service.LoginService;

import java.util.List;
import java.util.Map;

public class LoginServiceImpl implements LoginService {
    private LoginMapper loginMapper=new LoginMapperImpl();
    @Override
    public User login(String param1,String param2) {
        if(loginMapper.loginByEmail(new User(null,null,param1,
                param2,null,null,null,null))!=null){
            // 邮箱登录成功
            return loginMapper.loginByEmail(new User(null,null,param1,
                    param2,null,null,null,null));
        }

        if(loginMapper.loginByPhoneNum(new User(null,param1,null,
                param2,null,null,null,null))!=null){
            // 手机号码登录成功
            return loginMapper.loginByPhoneNum(new User(null,param1,null,
                    param2,null,null,null,null));
        }

        return null;
    }

    @Override
    public boolean regist(User user,String confirmPwd) {
        String pwd=user.getPwd();
        String phoneNum = user.getPhoneNum();
        if(confirmPwd.equals(user.getPwd())){
            // 确认密码同密码一致
            return loginMapper.regist(user);
        }else{
            return false;
        }
    }

    @Override
    public boolean alterMsg(User user) {
        return loginMapper.alterMsg(user);
    }

}
