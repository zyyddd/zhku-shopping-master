//@Time:2021/12/6 14:16
//@Author:aFun

package indi.domain;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class Orders {
    private Integer _id;
    private Integer goodId;
    private Integer userId;
    private Integer goodCount;
    private String isPay;
    private String isSend;
    private String isRecive;
    private String comment;
    public Orders(Integer _id, Integer goodId, Integer userId, Integer goodCount, String isSend) {
        this._id = _id;
        this.goodId = goodId;
        this.userId = userId;
        this.goodCount = goodCount;
        this.isSend = isSend;
    }

    public Orders(Integer _id, Integer goodId, Integer userId, Integer goodCount, String isPay, String isSend, String isRecive) {
        this._id = _id;
        this.goodId = goodId;
        this.userId = userId;
        this.goodCount = goodCount;
        this.isPay = isPay;
        this.isSend = isSend;
        this.isRecive = isRecive;
    }


    public Orders(Integer _id) {
        this._id = _id;
    }
}
