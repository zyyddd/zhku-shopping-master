//@Time:2021/12/8 15:13
//@Author:aFun

package indi.domain;

import lombok.*;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class PageBean<T> {
    private int totalCount;
    private int totalPage;
    private List<T> list;
    private int currentPage;
    private int rows;
}
