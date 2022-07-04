//@Time:2021/12/6 20:33
//@Author:aFun

import indi.domain.Goods;
import indi.domain.Orders;
import indi.domain.User;
import indi.mapper.GoodsMapper;
import indi.mapper.OrderMapper;
import indi.mapper.impl.GoodsMapperImpl;
import indi.mapper.impl.OrderMapperImpl;
import org.junit.jupiter.api.Test;

import java.util.List;

public class testOrderMapper {
    OrderMapper orderMapper=new OrderMapperImpl();
    @Test
    public void testFAOWN(){
        List<Orders> allOrderWithN = orderMapper.findAllOrderWithN(new User(
                1,null,null,null,null,null,null,null
        ));

        for (Orders orders : allOrderWithN) {
            System.out.println(orders);
        }
    }

    @Test
    public void testFAOWY(){
        List<Orders> allOrderWithY = orderMapper.findAllOrderWithY(new User(1,null,null,null,null,null,null,null));
        for (Orders orders : allOrderWithY) {
            System.out.println(orders);
        }
    }

    @Test
    public void testDelete(){
        boolean b = orderMapper.deleteOrder(new Orders(1,1,1,3,"Y"));
        System.out.println(b);
    }

    @Test
    public void testUpdate(){
        boolean b = orderMapper.updateOrder(new Orders(1,1,1,3,"Y"));
        System.out.println(b);
    }

    @Test
    public void testPayforUpdate(){
        boolean y = orderMapper.payforUpdateOrder(new User(3, null, null, null, 2, null, null, "Y"));
        System.out.println(y);
    }
}
