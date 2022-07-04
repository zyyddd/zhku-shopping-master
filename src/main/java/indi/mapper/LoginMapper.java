//@Time:2021/12/6 15:08
//@Author:aFun

package indi.mapper;

import indi.domain.User;

import java.util.List;
import java.util.Map;

/**
 * 登录
 */
public interface LoginMapper {
    // 在service层对用户输入进行判定
    public User loginByEmail(User user);

    public User loginByPhoneNum(User user);


    // 修改信息
    public boolean alterMsg(User user);

    // 消费者注册
    // 确认密码需要在service层进行两次密码是否一致的验证！！！
    public boolean regist(User user);

}
