//@Time:2021/12/8 15:05
//@Author:aFun

import indi.domain.Goods;
import indi.domain.PageBean;
import indi.domain.User;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;
import org.junit.jupiter.api.Test;

import java.util.HashMap;
import java.util.Map;


public class testManagerService {
    private ManagerService ms=new ManagerServiceImpl();
    // try to test the operating of user
    @Test
    public void testFindUserByPage(){
        Map<String,String[]>condition=new HashMap<>();
        condition.put("currentPage",new String[]{"1"});
        condition.put("rows",new String[]{"5"});
        PageBean<User> userByPage = ms.findUserByPage("1", "5", condition);
        System.out.println(userByPage);
    }
    @Test
    public void testAddUser(){
        System.out.println(ms.addUser(new User(
                null,"1314445232555","66666@163.com",
                "123",1,"aaFun","女","太阳系"
        )));
    }
    @Test
    public void testDeleteUser(){
        System.out.println(ms.deleteUserById("10"));
    }
    @Test
    public void testDeleteSelect(){
        System.out.println(ms.deleteUserSelected(new String[]{"11","12"}));
    }
    @Test
    public void testUpdateUser(){
        System.out.println(ms.updateUser(new User(
                2,"13144452325","666@163.com",
                "123",1,"aaaaFun","女","太阳系"
        )));
    }
    @Test
    public void testFindUserById(){
        System.out.println(ms.findUserById("1"));
    }

    // try to test the operating of good
    @Test
    public void testFindGoodByPage(){
        Map<String,String[]> condition=new HashMap<String,String[]>();
        condition.put("currentPage",new String[]{"1"});
        condition.put("rows",new String[]{"5"});
        PageBean<Goods> goodByPage = ms.findGoodByPage("1", "5", condition);
        System.out.println(goodByPage);
    }

    @Test
    public void testDeleteGood(){
        System.out.println(ms.deleteGood("4"));
    }
    @Test
    public void testDeleteGoodSelect(){
        String[] _ids=new String[]{"2","3"};
        System.out.println(ms.deleteGoodSelected(_ids));
    }
    @Test
    public void testUpdateGood(){
        System.out.println(ms.updateGood(new Goods(
                1,"仲恺 666 6G",6666,"用就完事了",
                null,1000,1,6666,"正道的光"
        )));
    }
    @Test
    public void testFindGoodByName(){
        System.out.println(ms.findGoodByName("zhku 30"));
    }
}
