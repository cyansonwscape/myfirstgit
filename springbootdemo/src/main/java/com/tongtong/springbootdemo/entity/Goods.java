package com.tongtong.springbootdemo.entity;

import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author yb
 * @since 2023-07-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Goods implements Serializable {

    private static final long serialVersionUID = 1L;

      private Integer id;

    private String name;

    private String price;

    private Integer count;

    private String selected;


}
