package cn.zhitong.kcsj.mapper;

import cn.zhitong.kcsj.po.Items;
import cn.zhitong.kcsj.po.ItemsExample;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 王波 on 2016/12/25.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class ItemsMapperTest {

    @Resource(name = "itemsMapper")
    private ItemsMapper itemsMapper;

    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void deleteByExample() throws Exception {

    }

    @Test
    public void deleteByPrimaryKey() throws Exception {

    }


    @Test
    public void insert() throws Exception {

        Items items = new Items();

        items.setName("神船");
        items.setPrice(999.9999f);
        items.setDetail("神舟笔记本, 就是牛逼");

        itemsMapper.insert(items);
    }

    @Test
    public void insertSelective() throws Exception {

    }

    // 自定义条件查询
    @Test
    public void selectByExample() throws Exception {

        ItemsExample itemsExample = new ItemsExample();

        // 通过 criteria构造查询条件
        ItemsExample.Criteria criteria = itemsExample.createCriteria();
        criteria.andNameEqualTo("小米笔记本");

        List<Items> list = itemsMapper.selectByExample(itemsExample);
        System.out.println(list);

    }

    @Test
    public void selectByPrimaryKey() throws Exception {
        Items items = itemsMapper.selectByPrimaryKey(1);
        System.out.println(items.toString());
    }

    // 对传入的数据
    @Test
    public void updateByExampleSelective() throws Exception {

    }

    @Test
    public void updateByExample() throws Exception {

    }

    // 如果传入字段不为空才更新
    // 在批量更新中使用此方法, 不需要先查询数据
    @Test
    public void updateByPrimaryKeySelective() throws Exception {

    }

    // 对所有的字段进行更新, 记住要先查询出来,再更新
    @Test
    public void updateByPrimaryKey() throws Exception {

        Items items = itemsMapper.selectByPrimaryKey(4);

        items.setName("神舟笔记本");

        itemsMapper.updateByPrimaryKey(items);

    }

    @After
    public void teardown() throws Exception {

    }


}