//@Time:2021/12/6 14:02
//@Author:aFun

package indi.domain;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class User {
    private Integer _id;
    private String phoneNum;
    private String email;
    private String pwd;
    private Integer role;
    private String name;
    private String gender;
    private String address;

    public User(Integer _id) {
        this._id = _id;
    }
}
