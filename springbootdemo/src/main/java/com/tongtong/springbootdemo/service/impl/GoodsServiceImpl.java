package com.tongtong.springbootdemo.service.impl;

import com.tongtong.springbootdemo.entity.Goods;
import com.tongtong.springbootdemo.mapper.GoodsMapper;
import com.tongtong.springbootdemo.service.IGoodsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author yb
 * @since 2023-07-09
 */
@Service
public class GoodsServiceImpl extends ServiceImpl<GoodsMapper, Goods> implements IGoodsService {

}
