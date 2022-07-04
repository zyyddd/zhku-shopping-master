//@Time:2021/12/8 13:56
//@Author:aFun

package indi.service;

import indi.domain.Goods;
import indi.domain.Orders;
import indi.domain.PageBean;
import indi.domain.User;

import java.util.List;
import java.util.Map;

public interface ManagerService {
    // 分页查询用户
    public PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String,String[]> condition);

    // 增加用户
    public boolean addUser(User user);

    // 根据ID删除用户，只需要传进来String类型的ID即可
    public boolean deleteUserById(String _id);

    // 批量删除用户
    public boolean deleteUserSelected(String[] _ids);

    // 修改用户
    public boolean updateUser(User user);

    // 通过ID查询用户，只需要传进来String类型的ID即可
    public User findUserById(String _id);


    // 分页查询商品
    public PageBean<Goods> findGoodByPage(String _currentPage, String _rows, Map<String,String[]> condition);

    // 增加商品
    public boolean addGood(Goods goods);

    // 根据ID删除商品，只需传入String类型的ID即可
    public boolean deleteGood(String _id);

    // 批量删除商品
    public boolean deleteGoodSelected(String[] _ids);

    // 修改商品
    public boolean updateGood(Goods goods);

    // 查询商品，只需传入goodName即可，这里是管理员查询商品
    public Goods findGoodByName(String goodName);

    public boolean savePic(String goodName ,byte[] arr);

    // 查询订单
    public List<Orders> FindAllOrdersByY();

}
