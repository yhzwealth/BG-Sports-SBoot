package com.wealth;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.converts.MySqlTypeConvert;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

//代码自动生成器
public class WealthCode {
    public static void main(String[] args) {
        //创建DataSource中的内部类Builder，进行数据库配置
        FastAutoGenerator.create(
                new DataSourceConfig
                        //默认数据库为Mysql数据库
                        .Builder("jdbc:mysql://localhost:3306/sm?useSSL=false&useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8&allowPublicKeyRetrieval=true","root","matrix666")
                        .typeConvert(new MySqlTypeConvert())
        )
                .packageConfig(t->{
                    //已经默认设置包名为mapper，service，entity
                    t.parent("com.wealth");
                }).globalConfig(t->{
            t.author("wealth");
            //开启 swagger 模式
            t.enableSwagger();
            //获取当前工程路径+目标目录(默认不覆盖生成文件)
            t .outputDir(System.getProperty("user.dir")+"/src/main/java");
            t.dateType(DateType.ONLY_DATE);
        }).strategyConfig(t->{
            //entityBuilder设置entity
            // 设置要映射的表名
            t.addInclude();
            //自动链式和lombok
            t.entityBuilder().enableChainModel();
            t.entityBuilder().enableLombok();
            //乐观锁
            t.entityBuilder().versionColumnName("version");
            //设置数据库 字段 映射到实体的命名规则为驼峰命名
            t.entityBuilder().columnNaming(NamingStrategy.underline_to_camel);
            //设置数据库 表 映射到实体的命名规则为驼峰命名
            t.entityBuilder().naming(NamingStrategy.underline_to_camel);
            //controllerBuilder 配置controller
            t.controllerBuilder().enableRestStyle();
            //开启驼峰命名
            t.controllerBuilder().enableHyphenStyle();
            //格式化Service实现类文件名称
            t.serviceBuilder().formatServiceFileName("%sService");
            t.serviceBuilder().formatServiceImplFileName("%sServiceImpl");
        }).execute();

    }
}
