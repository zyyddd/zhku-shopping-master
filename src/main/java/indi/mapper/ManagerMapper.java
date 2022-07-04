//@Time:2021/12/8 12:02
//@Author:aFun

package indi.mapper;

import indi.domain.Goods;
import indi.domain.Orders;
import indi.domain.User;

import java.util.List;
import java.util.Map;

// 系统管理员操作
public interface ManagerMapper {
    // 显示用户 分页查询
    public List<User> findUserByPage(int start, int rows, Map<String, String[]> condition);

    // 显示用户数
    public int findUserByPageCount(Map<String,String[]> condition);

    // 显示商品信息 分页查询
    public List<Goods> findGoodsByPage(int start, int rows, Map<String, String[]> condition);

    // 显示商品数
    public int findGoodsByPageCount(Map<String,String[]> condition);

    // 增加用户
    public boolean addUser(User user);

    // 删除用户
    public boolean deleteUser(User user);

    // 修改用户
    public boolean updateUser(User user);

    // 通过ID查询用户
    public User findUserById(User user);

    // 增加商品
    public boolean addGood(Goods goods);

    // 删除商品
    public boolean deleteGood(Goods goods);

    // 修改商品
    public boolean updateGood(Goods goods);

    // 查询商品
    public Goods findGood(Goods goods);

    //图片信息的保存
    public boolean savePic(String goodName,byte[] arr);

    //所有已经支付的订单
    public List<Orders> FindAllOrdersByY();
}
