package com.tongtong.springbootdemo.controller;


import com.tongtong.springbootdemo.entity.Goods;
import com.tongtong.springbootdemo.service.IGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author yb
 * @since 2023-07-09
 */
@RestController
@RequestMapping("/goods")
public class GoodsController {
@Autowired
private IGoodsService goodsService;

    @GetMapping
    public List<Goods> list(){
        return goodsService.list();
    }


}

