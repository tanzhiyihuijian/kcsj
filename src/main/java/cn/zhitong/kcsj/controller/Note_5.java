package cn.zhitong.kcsj.controller;

/**
 * Created by 王波 on 2016/9/25.
 */

/**

mybatis整合 ehCache

 1. ehcache是什么 ?
      EhCache 是一个纯Java的进程内缓存框架，是一种广泛使用的开源Java分布式缓存，具有快速、精干等特点，
      是Hibernate中默认的CacheProvider。

 2. mybatis整合 ehcache原理
      mybatis提供二级缓存Cache接口           org.apache.ibatis.cache.Cache
      在mybatis中, Cache接口的默认实现类是   org.apache.ibatis.cache.impl.PerpetualCache

    通过实现Cache接口可以实现mybatis缓存数据通过其它缓存数据库整合，mybatis的特长是sql操作，
    缓存数据的管理不是mybatis的特长，为了提高缓存的性能将mybatis和第三方的缓存数据库整合，
    比如ehcache、memcache、redis等。

    2.1 引入依赖

        4个jar包:

         slf4j-log4j12-1.7.21.jar  (maven依赖需要单独导入)
         slf4j-api-1.7.21.jar
         mybatis-ehcache-1.0.0.jar
         ehcache-core-2.4.4.jar    (高版本会报错)


         <dependency>
             <groupId>org.mybatis</groupId>
             <artifactId>mybatis-ehcache</artifactId>
             <version>1.0.0</version>
         </dependency>

         <dependency>
             <groupId>org.slf4j</groupId>
             <artifactId>slf4j-log4j12</artifactId>
             <version>1.7.21</version>
         </dependency>


 3. 分布缓存
    我们系统为了提高系统并发, 一般对系统进行分布式部署 (集群部署方式)

    不使用分布缓存, 缓存的数据在各服务器单独存储, 不方便系统开发, 所以需要使用分布式缓存对缓存数据进行集中管理

    ==> 对缓存数据进行集中管理 (集群), 使用分布式缓存框架, Redis, memacache, ehcache
      myabtis无法实现分布式缓存, 需要和其他分布式缓存框架进行整合

 4. 整合方法
      mybatis提供了一个 cache接口, 如果要实现自己的缓存逻辑, 实现 Cache接口开发即可
      mybatis 和 ehcache整合, 在整合包中提供了一个 Cache接口的实现类 org.mybatis.caches.ehcache.EhcacheCache


    4.1配置 mapper.xml中 Cache的 type为 ehcache对 Cache接口的实现类
            <cache type="org.mybatis.caches.ehcache.EhcacheCache" />

    4.2 在 classpath下加入 ehchache.xml配置文件



---------------------------------------------------------------------------------

二级缓存应用场景

    对于访问多的查询请求且用户对查询结果实时要求性不高, 此时可采用 mybatis二级缓存技术降低数据库访问量
 提高访问速度.
    ==> 业务场景比如: 耗时较高的统计分析sql, 电话账单查询sql等

    实现方法如下: 通过设置刷新间隔时间, 由 mybatis每隔一段时间自动清空缓存, 根据数据变化频率设置缓存刷新时间间隔
 flushInterval, 比如设置为 30分钟, 60分钟, 24小时等


二级缓存的局限性

    mybatis 二级缓存对细粒度级别的数据缓存实现不好


---------------------------------------------------------------------------------

mybatis逆向工程

	mybatis需要程序员自己写 sql, 
	mybatis官方提供逆向工程, 可以针对单表自动生成 mybatis执行所生成的代码 (mapper.Java, mapper.xml, po)

	企业实际开发中, 常用的逆向工程方式: 数据库表 --> Java代码
	
	要使用逆向工程, 要下载逆向工程工具包 mybatis-genreator-core-1.3.2-bundle.zip


	使用方法: 
		1. 解压工具包
		2. 运行 Mybatis Genreator
			2.1 Ant, Maven, eclipse插件方式, xml配置再执行Java程序 这几种方式都可以运行 mybatis generator







	使用生成的代码
		
	
















 */
public class Note_5 {
    public static void main(String[] args) {
        System.out.println("Note_5.main");
    }
}
