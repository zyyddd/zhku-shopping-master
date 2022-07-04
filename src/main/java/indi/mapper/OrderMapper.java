//@Time:2021/12/6 15:37
//@Author:aFun

package indi.mapper;

import indi.domain.Orders;
import indi.domain.User;

import java.util.List;

/**
 * 订单
 */
public interface OrderMapper {
    // 查询用户订单 购物车内的
    public List<Orders> findAllOrderWithN(User user);

    // 查询用户订单 已付款的
    public List<Orders> findAllOrderWithY(User user);

    // 增加订单
    public boolean addOrder(User user, Orders orders);

    // 删除一个订单
    public boolean deleteOrder(Orders orders);

    // 修改一个订单
    public boolean updateOrder(Orders orders);



    // 付款后的账单将isPay位置为"Y"
    public boolean payforUpdateOrder(User user);

    // 管理员将订单isSend位置为"Y"
    public boolean changeOrderSend(Orders orders);

    // 用户将isRecive位置为"Y"
    public boolean changeOrderRecive(Orders orders);
    //添加评论
    public boolean addComment(String comment,Integer id);


}
