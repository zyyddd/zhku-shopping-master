//-*- coding = utf-8 -*-
//@Time:2021/12/11 18:22
//@Author:ZYD
//@File:OrderService.py
//@Software: IntelliJ IDEA

package indi.service;

import indi.domain.Orders;
import indi.domain.Ordersuper;
import indi.domain.User;

import java.util.List;

public interface OrderService {
    // 查询用户订单 购物车内的
    public List<Ordersuper> findAllOrderWithN(Integer id);

    // 查询用户订单 已付款的
    public List<Ordersuper> findAllOrderWithY(Integer userId);

    // 增加订单
    public boolean addOrder(Integer goodId, Integer UserId);

    // 删除一个订单
    public boolean deleteOrder(Integer id);

    // 修改一个订单
    public boolean updateOrder(Integer goodId, Integer userId, Integer goodCount, String isSend, Integer _id);

    //返回所有订单商品件数和合计价格
    public List<Integer> numandpriceOfAll(Integer userId);

    public boolean payforUpdateOrder(Integer userId);

    // 付款后的账单将isPay位置为"Y"
    public boolean payforUpdateOrder(User user);

    // 管理员将订单isSend位置为"Y"
    public boolean changeOrderSend(Orders orders);

    // 用户将isRecive位置为"Y"
    public boolean changeOrderRecive(Orders orders);

    //添加评论
    public boolean addComment(String comment, Integer id);
}
