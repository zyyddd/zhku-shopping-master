//@Time:2021/12/6 20:33
//@Author:aFun

import indi.domain.User;
import indi.mapper.LoginMapper;
import indi.mapper.impl.LoginMapperImpl;
import indi.service.LoginService;
import indi.service.impl.LoginServiceImpl;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class testLogin {
    LoginService ls=new LoginServiceImpl();

    @Test
    public void testLogin(){
        User login = ls.login("15976924510", "123456");
        System.out.println(login);

        User login1 = ls.login("1030935903@qq.com", "123456");
        System.out.println(login1);

        User login2 = ls.login("1", "1");
        System.out.println(login2);
    }

    @Test
    public void testRegist(){
        boolean regist1 = ls.regist(new User(null, "10086", "123@163.com",
                "123", null, "test", "女", "光泽"), "12345");
        System.out.println(regist1);

        boolean regist = ls.regist(new User(null, "10086", "123@163.com",
                "123", null, "test", "女", "光泽"), "123");
        System.out.println(regist);



    }

    @Test
    public void testRegist2(){
        boolean regist1 = ls.regist(new User(null, "110", "123@163.com",
                "123", null, "test", "女", "光泽"), "12345");
        System.out.println(regist1);
    }

    @Test
    public void testAlterMsg(){
        User user=new User(20,"110","1@163.com","123456",2,"test2",
                "男","guangzhou");
        boolean b = ls.alterMsg(user);
        System.out.println(b);
    }

}
