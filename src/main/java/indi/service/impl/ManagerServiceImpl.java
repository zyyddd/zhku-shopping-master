//@Time:2021/12/8 14:34
//@Author:aFun

package indi.service.impl;

import indi.domain.Goods;
import indi.domain.Orders;
import indi.domain.PageBean;
import indi.domain.User;
import indi.mapper.ManagerMapper;
import indi.mapper.impl.ManagerMapperImpl;
import indi.service.ManagerService;

import java.util.List;
import java.util.Map;

public class ManagerServiceImpl implements ManagerService {
    ManagerMapper mm = new ManagerMapperImpl();

    @Override
    public PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        if (currentPage <= 0) {
            currentPage = 1;
        }
        PageBean<User> pb = new PageBean<>();
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);

        int totalCount = mm.findUserByPageCount(condition);
        pb.setTotalCount(totalCount);

        int start = (currentPage - 1) * rows;
        List<User> list = mm.findUserByPage(start, rows, condition);
        pb.setList(list);

        int totalPage = (totalCount % rows) == 0 ? totalCount / rows : (totalCount / rows) + 1;
        pb.setTotalPage(totalPage);

        return pb;
    }

    @Override
    public boolean addUser(User user) {
        return mm.addUser(user);
    }

    @Override
    public boolean deleteUserById(String _id) {
        return mm.deleteUser(new User(Integer.parseInt(_id)));
    }

    @Override
    public boolean deleteUserSelected(String[] _ids) {
        boolean flag = true;
        for (String id : _ids) {
            boolean b = deleteUserById(id);
            if (!b) {
                flag = false;
            }
        }
        return flag;
    }

    @Override
    public boolean updateUser(User user) {
        return mm.updateUser(user);
    }

    @Override
    public User findUserById(String _id) {
        return mm.findUserById(new User(Integer.parseInt(_id)));
    }

    @Override
    public PageBean<Goods> findGoodByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);

        if (currentPage <= 0) {
            currentPage = 1;
        }
        PageBean<Goods> pb = new PageBean<>();
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);

        int totalCount = mm.findGoodsByPageCount(condition);
        pb.setTotalCount(totalCount);

        int start = (currentPage - 1) * rows;
        List<Goods> list = mm.findGoodsByPage(start, rows, condition);
        pb.setList(list);

        int totalPage = (totalCount % rows) == 0 ? totalCount / rows : (totalCount / rows) + 1;
        pb.setTotalPage(totalPage);

        return pb;
    }

    @Override
    public boolean addGood(Goods goods) {
        return mm.addGood(goods);
    }

    @Override
    public boolean deleteGood(String _id) {
        boolean b = mm.deleteGood(new Goods(Integer.parseInt(_id)));
        return b;
    }

    @Override
    public boolean deleteGoodSelected(String[] _ids) {
        boolean flag = true;
        for (String id : _ids) {
            boolean b = mm.deleteGood(new Goods(Integer.parseInt(id)));
            if (!b) {
                flag = false;
            }
        }
        return flag;
    }

    @Override
    public boolean updateGood(Goods goods) {
        return mm.updateGood(goods);
    }

    @Override
    public Goods findGoodByName(String goodName) {
        Goods good = mm.findGood(new Goods(goodName));
        return good;
    }

    @Override
    public boolean savePic(String goodName, byte[] arr) {
        return mm.savePic(goodName, arr);
    }

    @Override
    public List<Orders> FindAllOrdersByY() {
        return mm.FindAllOrdersByY();
    }
}
