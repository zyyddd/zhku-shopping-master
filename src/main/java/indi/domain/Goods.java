//@Time:2021/12/6 14:18
//@Author:aFun

package indi.domain;

import lombok.*;

import java.sql.Blob;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class Goods {

    private Integer _id;
    private String goodName;
    private Integer goodPrice;
    private String goodDescibe;
    private Blob goodImg;
    private Integer sumGoods;
    private Integer resGoods;
    private Integer sumLove;
    private String color;


    public Goods(String goodName) {
        this.goodName = goodName;
    }

    public Goods(Integer _id) {
        this._id = _id;
    }
}
