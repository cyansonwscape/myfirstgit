package com.tongtong.springbootdemo;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

/**
 * 代码生成器
 */
public class CodeGenerator {

    public static void main(String[] args) {
        // 1. 全局配置
        GlobalConfig gc = new GlobalConfig();
        String projectPath = System.getProperty("user.dir");
        gc.setOutputDir(projectPath + "/src/main/java");
        gc.setAuthor("yb");
        gc.setOpen(false);

        // 2. 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl("jdbc:mysql://localhost:3306/tongtongshop?useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai");
        dsc.setDriverName("com.mysql.cj.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("@w1686881211915");

        // 3. 包名策略配置
        PackageConfig pc = new PackageConfig();
        pc.setModuleName(null);
        pc.setParent("com.tongtong.springbootdemo");

        // 4. 配置生成模板
        TemplateConfig tc = new TemplateConfig();
        tc.setXml(null);

        // 5. 策略配置
        StrategyConfig strategy = new StrategyConfig();
        strategy.setNaming(NamingStrategy.underline_to_camel); // 表名生成策略
        strategy.setColumnNaming(NamingStrategy.underline_to_camel); // 字段名生成策略
        strategy.setEntityLombokModel(true); // 是否启用lombok模式
        strategy.setRestControllerStyle(true); // 是否生成RestController
        strategy.setControllerMappingHyphenStyle(true); // 是否启用mapping映射风格

        // 6. 代码生成器配置
        AutoGenerator mpg = new AutoGenerator();
        mpg.setGlobalConfig(gc);
        mpg.setDataSource(dsc);
        mpg.setPackageInfo(pc);
        mpg.setTemplate(tc);
        mpg.setStrategy(strategy);
        mpg.execute();
    }
}