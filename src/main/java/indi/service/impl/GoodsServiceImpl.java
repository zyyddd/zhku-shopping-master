//-*- coding = utf-8 -*-
//@Time:2021/12/7 22:14
//@Author:ZYD
//@File:GoodsServiceImpl.py
//@Software: IntelliJ IDEA

package indi.service.impl;

import indi.domain.Goods;
import indi.mapper.GoodsMapper;
import indi.mapper.impl.GoodsMapperImpl;
import indi.service.GoodsService;

import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    GoodsMapper gm = new GoodsMapperImpl();
    @Override
    public List<Goods> showAllGoods() {

        return gm.showAllGoods();
    }

    @Override
    public Goods findGoodById(Integer _id) {
        return gm.findGoodById(_id);
    }

    @Override
    public Goods findGoodByName(String goodName) {
        return gm.findGoodByName(goodName);
    }
}
