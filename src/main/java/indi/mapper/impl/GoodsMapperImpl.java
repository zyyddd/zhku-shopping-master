//@Time:2021/12/6 15:31
//@Author:aFun

package indi.mapper.impl;

import indi.domain.Goods;
import indi.mapper.GoodsMapper;
import indi.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class GoodsMapperImpl implements GoodsMapper {
    private JdbcTemplate jdbcTemplate=new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<Goods> showAllGoods() {
        List<Goods> result=new ArrayList<>();
        try {
            String sql="select * from goods";
            Connection connection=JDBCUtils.getConnection();
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                result.add(new Goods((Integer) resultSet.getInt("_id"),
                        resultSet.getString("goodName"),
                        (Integer) resultSet.getInt("goodPrice"),
                        resultSet.getString("goodDescibe"),
                        resultSet.getBlob("goodImg"),
                        (Integer) resultSet.getInt("sumGoods"),
                        (Integer) resultSet.getInt("resGoods"),
                        (Integer) resultSet.getInt("sumlove"),
                        resultSet.getString("color")));
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

//        String sql="select * from goods";
//        List<Map<String, Object>> maps = jdbcTemplate.queryForList(sql);
//
//        for (Map<String, Object> map : maps) {
////            byte[] goodImg = (byte[]) map.get("goodImg");
////            result.add(new Goods((Integer)map.get("_id"),(String)map.get("goodName"),(Integer)map.get("goodPrice"),
////                    (String)map.get("goodDescibe"),(Blob) map.get("goodImg"),(Integer)map.get("sumGoods"),
////                    (Integer)map.get("resGoods"),(Integer)map.get("sumlove")));
//        }

        return result;
    }

    @Override
    public Goods findGoodById(Integer _id) {
        String sql="select * from goods where _id=?";
        Goods goods = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Goods.class), _id);
        return goods;
    }

    @Override
    public Goods findGoodByName(String goodName) {
        String sql="select * from goods where goodName=?";
        Goods goods = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Goods.class), goodName);
        return goods;
    }
}
