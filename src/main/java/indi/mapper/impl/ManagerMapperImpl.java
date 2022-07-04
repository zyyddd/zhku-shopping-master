//@Time:2021/12/8 12:11
//@Author:aFun

package indi.mapper.impl;

import indi.domain.Goods;
import indi.domain.Orders;
import indi.domain.User;
import indi.mapper.ManagerMapper;
import indi.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ManagerMapperImpl implements ManagerMapper {
    JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());


    @Override
    public List<User> findUserByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select * from user where 1 = 1";
        StringBuilder sb = new StringBuilder(sql);
        Set<String> keySet = condition.keySet();
        List<Object> params = new ArrayList<Object>();
        for (String key : keySet) {
            if ("currentPage".equals(key) || "rows".equals(key)) {
                continue;
            }
            String value = condition.get(key)[0];
            if (value != null && !"".equals(value)) {
                sb.append(" and " + key + " like ? ");
                params.add("%" + value + "%");
            }
        }

        sb.append(" limit ?,? ");
        params.add(start);
        params.add(rows);
        sql = sb.toString();
        return template.query(sql, new BeanPropertyRowMapper<User>(User.class), params.toArray());
    }

    @Override
    public int findUserByPageCount(Map<String, String[]> condition) {
        String sql = "select count(*) from user where 1 = 1";
        StringBuilder sb = new StringBuilder(sql);
        Set<String> keySet = condition.keySet();
        List<Object> params = new ArrayList<>();
        for (String key : keySet) {
            if ("currentPage".equals(key) || "rows".equals(key)) {
                continue;
            }
            String value = condition.get(key)[0];
            if (value != null && !"".equals(value)) {
                sb.append(" and " + key + " like ? ");
                params.add("%" + value + "%");
            }
        }
        return template.queryForObject(sb.toString(), Integer.class, params.toArray());
    }

    @Override
    public List<Goods> findGoodsByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select * from goods where 1 = 1";
        StringBuilder sb = new StringBuilder(sql);
        Set<String> keySet = condition.keySet();
        List<Object> params = new ArrayList<Object>();
        for (String key : keySet) {
            if ("currentPage".equals(key) || "rows".equals(key)) {
                continue;
            }
            String value = condition.get(key)[0];
            if (value != null && !"".equals(value)) {
                sb.append(" and " + key + " like ? ");
                params.add("%" + value + "%");
            }
        }

        sb.append(" limit ?,? ");
        params.add(start);
        params.add(rows);
        sql = sb.toString();
        return template.query(sql, new BeanPropertyRowMapper<Goods>(Goods.class), params.toArray());
    }

    @Override
    public int findGoodsByPageCount(Map<String, String[]> condition) {
        String sql = "select count(*) from goods where 1 = 1";
        StringBuilder sb = new StringBuilder(sql);
        Set<String> keySet = condition.keySet();
        List<Object> params = new ArrayList<>();
        for (String key : keySet) {
            if ("currentPage".equals(key) || "rows".equals(key)) {
                continue;
            }
            String value = condition.get(key)[0];
            if (value != null && !"".equals(value)) {
                sb.append(" and " + key + " like ? ");
                params.add("%" + value + "%");
            }
        }
        return template.queryForObject(sb.toString(), Integer.class, params.toArray());
    }

    @Override
    public boolean addUser(User user) {
        String sql = "insert into user values(null,?,?,?,?,?,?,?)";
        int update = template.update(sql, user.getPhoneNum(), user.getEmail(), user.getPwd(), user.getRole(),
                user.getName(), user.getGender(), user.getAddress());
        return update > 0 ? true : false;
    }

    @Override
    public boolean deleteUser(User user) {
        String sql = "delete from user where _id=?";
        int update = template.update(sql, user.get_id());
        return update > 0 ? true : false;
    }

    @Override
    public boolean updateUser(User user) {
        String sql = "update user set phoneNum=?,email=?," +
                "pwd=?,name=?,gender=?,address=? where _id=?";
        int update = template.update(sql, user.getPhoneNum(), user.getEmail(), user.getPwd(),
                user.getName(), user.getGender(), user.getAddress(), user.get_id());
        return update > 0 ? true : false;
    }

    @Override
    public User findUserById(User user) {
        // 通过id查询
        String sql = "select * from user where _id=?";
        User resultUser = template.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), user.get_id());
        return resultUser;
    }

    @Override
    public boolean addGood(Goods goods) {
        String sql = "insert into goods values(null,?,?,?,null,?,?,?,?)";
        int update = template.update(sql, goods.getGoodName(), goods.getGoodPrice(), goods.getGoodDescibe(),
                goods.getSumGoods(), goods.getResGoods(),
                goods.getSumLove(), goods.getColor());
        return update > 0 ? true : false;
    }

    @Override
    public boolean deleteGood(Goods goods) {
        String sql = "delete from goods where _id=?";
        int update = template.update(sql, goods.get_id());
        return update > 0 ? true : false;
    }

    @Override
    public boolean updateGood(Goods goods) {
        String sql = "update goods set goodName=?,goodPrice=?,goodDescibe=?," +
                "goodImg=?,sumGoods=?,resGoods=?,sumlove=?,color=? where _id=?";
        int update = template.update(sql, goods.getGoodName(), goods.getGoodPrice(), goods.getGoodDescibe(),
                goods.getGoodImg(), goods.getSumGoods(), goods.getResGoods(),
                goods.getSumLove(), goods.getColor(), goods.get_id());
        return update > 0 ? true : false;
    }

    @Override
    public Goods findGood(Goods goods) {
        // 按商品名查询
        String sql = "select * from goods where goodName=?";
        Goods resultGood = template.queryForObject(sql, new BeanPropertyRowMapper<>(Goods.class), goods.getGoodName());
        if (resultGood != null) {
            return resultGood;
        } else {
            return null;
        }
    }

    public static byte[] getImgStr(String path) throws IOException {
        FileInputStream fis = new FileInputStream(path);
        ByteArrayOutputStream out = new ByteArrayOutputStream();

        int len = 0;
        byte[] b = new byte[1024];
        while (true) {
            try {
                if (!((len = fis.read(b)) != -1)) break;
            } catch (IOException e) {
                e.printStackTrace();
            }
            out.write(b, 0, len);
        }

        //接收out
        byte[] array = out.toByteArray();
        fis.close();
        out.close();

        return array;
    }

    @Override
    public boolean savePic(String goodName, byte[] arr) {
        try {


            Connection conn = JDBCUtils.getConnection();
            Blob blob = conn.createBlob();
            blob.setBytes(1, arr);
            String sql = "update goods set goodImg = ?  where goodName = ? ";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setBlob(1, blob);
            pstm.setString(2, goodName);
            int i = pstm.executeUpdate();
            return i > 0 ? true : false;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Orders> FindAllOrdersByY() {
        List<Orders> result=new ArrayList<>();
        String sql = "select * from orders where isPay = 'Y'";
        List<Map<String, Object>> maps = template.queryForList(sql);
        for (Map<String, Object> map : maps) {
            result.add(new Orders((Integer)map.get("_id"),(Integer) map.get("goodId"),
                    (Integer)map.get("userId"),
                    (Integer) map.get("goodCount"),(String) map.get("isSend")
                    ,(String) map.get("isPay"),(String) map.get("isRecive"),(String) map.get("comment")));
        }
        return result;
    }
}
