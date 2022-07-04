//@Time:2021/12/6 19:59
//@Author:aFun

import indi.domain.Goods;
import indi.mapper.GoodsMapper;
import indi.mapper.impl.GoodsMapperImpl;
import org.junit.jupiter.api.Test;

import java.util.List;

public class testGoodsMapper {
    GoodsMapper goodsMapper=new GoodsMapperImpl();
    @Test
    public void testFindAll(){
        List<Goods> goods = goodsMapper.showAllGoods();
        for (Goods good : goods) {
            System.out.println(good);
        }
    }

    @Test
    public void testFindById(){
        Goods goodById = goodsMapper.findGoodById(1);
        System.out.println(goodById);
    }

    @Test
    public void testFindByName(){
        Goods goodByName = goodsMapper.findGoodByName("zhku K1 30G");
        System.out.println(goodByName);
    }
}
