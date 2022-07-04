//@Time:2021/12/6 15:46
//@Author:aFun

package indi.mapper.impl;

import indi.domain.Orders;
import indi.domain.User;
import indi.mapper.OrderMapper;
import indi.util.JDBCUtils;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class OrderMapperImpl implements OrderMapper {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<Orders> findAllOrderWithN(User user) {
        List<Orders> result=new ArrayList<>();
        String sql="select * from orders where userId=? and isPay='N'";
        List<Map<String, Object>> maps = template.queryForList(sql, user.get_id());
        for (Map<String, Object> map : maps) {
            result.add(new Orders((Integer)map.get("_id"),(Integer)map.get("goodId"),(Integer)map.get("userId"),
                    (Integer)map.get("goodCount"),(String)map.get("isPay")));
        }
        return result;
    }

    @Override
    public List<Orders> findAllOrderWithY(User user) {
        List<Orders> result=new ArrayList<>();
        String sql="select * from orders where userId=? and isPay='Y'";
        List<Map<String, Object>> maps = template.queryForList(sql, user.get_id());
        for (Map<String, Object> map : maps) {
            result.add(new Orders((Integer)map.get("_id"),(Integer)map.get("goodId"),(Integer)map.get("userId"),
                    (Integer)map.get("goodCount"),(String)map.get("isPay"),(String)map.get("isSend"),(String)map.get("isRecive")));
        }
        return result;
    }

    @Override
    public boolean addOrder(User user, Orders orders) {
        String sql="insert into orders(goodId,userId,goodCount) values(?,?,?)";
        int update = template.update(sql, orders.getGoodId(), orders.getUserId(), orders.getGoodCount());
        return update>0?true:false;
    }

    @Override
    public boolean deleteOrder(Orders orders) {
        String sql="delete from orders where _id=?";
        int update = template.update(sql, orders.get_id());
        return update>0?true:false;
    }

    @Override
    public boolean updateOrder(Orders orders) {
        String sql="update orders set goodId=?,userId=?,goodCount=?,isSend=? where _id=? ";
        int update = template.update(sql,orders.getGoodId(), orders.getUserId(),
                orders.getGoodCount(), orders.getIsSend(),orders.get_id());
        return update>0?true:false;
    }

//    @Override
//    public boolean payforUpdateOrder(User user) {
//        String sql="update orders set isSend='Y' where userId=? ";
//        int update = template.update(sql,user.get_id());
//        return update>0?true:false;
//    }


    @Override
    public boolean payforUpdateOrder(User user) {
        String sql="update orders set isPay='Y' where userId=? ";
        int update = template.update(sql,user.get_id());
        return update>0?true:false;
//        // 付款后将isPay设为true
//        String sql="update orders set isPay='Y' where _id=?";
//        int update = template.update(sql, orders.get_id());
//        return update>0?true:false;
    }

    @Override
    public boolean changeOrderSend(Orders orders) {
        String sql="update orders set isSend='Y' where _id=?";
        int update = template.update(sql, orders.get_id());
        return update>0?true:false;
    }

    @Override
    public boolean changeOrderRecive(Orders orders) {
        String sql="update orders set isRecive='Y' where _id=?";
        int update = template.update(sql, orders.get_id());
        return update>0?true:false;
    }

    @Override
    public boolean addComment(String comment, Integer id) {
        String sql = "update orders set comment = ? where _id = ?";
        int update = template.update(sql, comment, id);
        return update>0?true:false;
    }
}
