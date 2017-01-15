package cn.zhitong.kcsj.service.impl;

import cn.zhitong.kcsj.mapper.ItemsMapper;
import cn.zhitong.kcsj.mapper.ItemsMapperCustom;
import cn.zhitong.kcsj.po.Items;
import cn.zhitong.kcsj.po.ItemsCustom;
import cn.zhitong.kcsj.po.ItemsQueryVo;
import cn.zhitong.kcsj.service.ItemsService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 王波 on 2016/12/25.
 */
// 声明这个 service的所有方法需要事务管理, 每一个业务方法开始时都会打开一个事务
@Transactional
//
@Service("itemsService")
public class ItemsServiceImpl implements ItemsService {

    @Resource(name = "itemsMapperCustom")
    private ItemsMapperCustom itemsMapperCustom;

    @Resource(name = "itemsMapper")
    private ItemsMapper itemsMapper;

    public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo) throws Exception {
        return itemsMapperCustom.findItemsList(itemsQueryVo);
    }


    @Override
    public ItemsCustom findItemsById(Integer items_id) throws Exception {

        Items items = itemsMapper.selectByPrimaryKey(items_id);

        // 中间对商品信息进行业务处理


        ItemsCustom itemsCustom = new ItemsCustom();
        // 属性值拷贝
        BeanUtils.copyProperties(items, itemsCustom);

        return itemsCustom;
    }

    @Override
    public void updateItems(Integer items_id, ItemsCustom itemsCustom) throws Exception {

        // 添加业务校验, 通常在 Service接口中对关键字参数进行校验

        // id非空校验
        if (items_id == null)
            throw new RuntimeException("id为空");

        itemsCustom.setId(items_id);
        itemsMapper.updateByPrimaryKey(itemsCustom);
    }

}
