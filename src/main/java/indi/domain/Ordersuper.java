//-*- coding = utf-8 -*-
//@Time:2021/12/11 19:52
//@Author:ZYD
//@File:Ordersuper.py
//@Software: IntelliJ IDEA

package indi.domain;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class Ordersuper {
    private Integer _id;
    private Integer goodId;
    private Integer userId;
    private Integer goodCount;
    private String goodName;
    private Integer goodPrice;
    private Integer totalPrice;
    private String isPay;
    private String isSend;
    private String isRecive;

    public Ordersuper(Integer _id, Integer goodId, Integer userId, Integer goodCount, String goodName, Integer goodPrice, Integer totalPrice, String isPay) {
        this._id = _id;
        this.goodId = goodId;
        this.userId = userId;
        this.goodCount = goodCount;
        this.goodName = goodName;
        this.goodPrice = goodPrice;
        this.totalPrice = totalPrice;
        this.isPay = isPay;
    }
}
