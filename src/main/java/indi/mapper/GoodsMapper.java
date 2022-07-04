//@Time:2021/12/6 15:12
//@Author:aFun

package indi.mapper;

import indi.domain.Goods;

import java.util.List;

/**
 * 商品
 */
public interface GoodsMapper {

    // 展示所有商品
    public List<Goods> showAllGoods();

    // 通过id查商品
    public Goods findGoodById(Integer _id);


    // 通过name查商品
    public Goods findGoodByName(String goodName);
}
