//-*- coding = utf-8 -*-
//@Time:2021/12/11 18:23
//@Author:ZYD
//@File:OrderServiceImpl.py
//@Software: IntelliJ IDEA

package indi.service.impl;

import com.sun.org.apache.xpath.internal.operations.Or;
import indi.domain.Goods;
import indi.domain.Orders;
import indi.domain.Ordersuper;
import indi.domain.User;
import indi.mapper.GoodsMapper;
import indi.mapper.OrderMapper;
import indi.mapper.impl.GoodsMapperImpl;
import indi.mapper.impl.OrderMapperImpl;
import indi.service.OrderService;
import org.springframework.core.annotation.Order;

import java.util.ArrayList;
import java.util.List;

public class OrderServiceImpl implements OrderService {
    OrderMapper orderMapper = new OrderMapperImpl();
    GoodsMapper goodsMapper = new GoodsMapperImpl();

    @Override
    public List<Ordersuper> findAllOrderWithN(Integer id) {
        User user = new User(id, null, null, null, 0, null, null, null);
        List<Orders> aown = orderMapper.findAllOrderWithN(user);
        List<Ordersuper> orders = new ArrayList<>();
        for (Orders order : aown) {
            Integer goodId = order.getGoodId();
            Goods goodById = goodsMapper.findGoodById(goodId);
            Integer totalPrice = order.getGoodCount() * goodById.getGoodPrice();
            Ordersuper ordersuper = new Ordersuper(order.get_id(), order.getGoodId(), order.getUserId(), order.getGoodCount()
                    ,  goodById.getGoodName(), goodById.getGoodPrice(), totalPrice,order.getIsPay());
            orders.add(ordersuper);
        }
        return orders;
    }

    @Override
    public List<Ordersuper> findAllOrderWithY(Integer userId) {
        User user = new User(userId,null,null,null,2,null,null,null );
        List<Orders> allOrderWithY = orderMapper.findAllOrderWithY(user);
        List<Ordersuper> orders = new ArrayList<>();
        for (Orders order:allOrderWithY){
            Goods good = goodsMapper.findGoodById(order.getGoodId());
            Integer totalPrice = order.getGoodCount() * good.getGoodPrice();
            Ordersuper ordersuper = new Ordersuper(order.get_id(),good.get_id(),userId,order.getGoodCount()
            ,good.getGoodName(),good.getGoodPrice(),totalPrice,order.getIsPay(),order.getIsSend(),order.getIsRecive());
            orders.add(ordersuper);
        }
        return orders;
    }

    @Override
    public boolean addOrder(Integer goodId, Integer UserId) {
        Orders orders = new Orders(null,goodId,UserId,1,"N");
        User user = new User(0,null,null,null,0,null,null,null);
        boolean b = orderMapper.addOrder(user, orders);
        return b;
    }

    @Override
    public boolean deleteOrder(Integer id) {
        Orders orders = new Orders(id, 0, 0, 0, null);
        boolean b = orderMapper.deleteOrder(orders);
        return b;
    }

    @Override
    public boolean updateOrder(Integer goodId, Integer userId, Integer goodCount, String isSend, Integer _id) {
        Goods good = goodsMapper.findGoodById(goodId);
        if (good.getResGoods() > 0) {
            Orders orders = new Orders(_id, goodId, userId, goodCount, isSend);
            boolean b = orderMapper.updateOrder(orders);
            return b;
        } else {
            return false;
        }
    }

    @Override
    public List<Integer> numandpriceOfAll(Integer userId) {
        User user = new User(userId, null, null, null, 2, null, null, null);
        List<Orders> aown = orderMapper.findAllOrderWithN(user);
        List<Integer> numandpriceOfAll = new ArrayList<>();
        Integer sumCount = 0;
        Integer sumPrice = 0;
        for (Orders orders : aown) {
            Integer goodCount = orders.getGoodCount();
            sumCount += goodCount;
            Goods good = goodsMapper.findGoodById(orders.getGoodId());
            Integer goodPrice = good.getGoodPrice();
            Integer price = goodPrice * goodCount;
            sumPrice += price;
        }
        numandpriceOfAll.add(sumCount);
        numandpriceOfAll.add(sumPrice);


        return numandpriceOfAll;
    }

    @Override
    public boolean payforUpdateOrder(Integer userId) {
        User user = new User(userId,null,null,null,2,null,null,null);
        boolean b = orderMapper.payforUpdateOrder(user);
        return b;
    }

    @Override
    public boolean payforUpdateOrder(User user) {
        return orderMapper.payforUpdateOrder(user);
    }

    @Override
    public boolean changeOrderSend(Orders orders) {
        return orderMapper.changeOrderSend(orders);
    }

    @Override
    public boolean changeOrderRecive(Orders orders) {
        return orderMapper.changeOrderRecive(orders);

    }

    @Override
    public boolean addComment(String comment, Integer id) {
        return orderMapper.addComment(comment,id);
    }
}
