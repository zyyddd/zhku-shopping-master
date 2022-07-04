//-*- coding = utf-8 -*-
//@Time:2021/12/7 22:13
//@Author:ZYD
//@File:GoodsService.py
//@Software: IntelliJ IDEA

package indi.service;

import indi.domain.Goods;

import java.util.List;

public interface GoodsService {
    // 展示所有商品
    public List<Goods> showAllGoods();

    // 通过id查商品
    public Goods findGoodById(Integer _id);


    // 通过name查商品
    public Goods findGoodByName(String goodName);
}
