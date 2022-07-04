//@Time:2021/12/6 16:41
//@Author:aFun

package indi.service;

import indi.domain.User;
import indi.mapper.LoginMapper;

import java.util.List;
import java.util.Map;

// 登录service
public interface LoginService {
    // 登录
    // 这里需要传入参数1：邮箱/手机号码
    // 参数2：密码
    public User login(String param1,String param2);

    // 注册
    // confirmPwd是确认密码
    public boolean regist(User user,String confirmPwd);

    // 修改个人信息
    public boolean alterMsg(User user);

}
