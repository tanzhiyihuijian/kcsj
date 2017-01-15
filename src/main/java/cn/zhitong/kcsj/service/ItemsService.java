package cn.zhitong.kcsj.service;

import cn.zhitong.kcsj.po.ItemsCustom;
import cn.zhitong.kcsj.po.ItemsQueryVo;

import java.util.List;

/**
 * Created by 王波 on 2016/12/25.
 */
public interface ItemsService {

    //
    public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo) throws Exception;

    // 根据 id查询商品信息
    public ItemsCustom findItemsById(Integer items_id) throws Exception;

    // 修改商品信息
    public void updateItems(Integer items_id, ItemsCustom itemsCustom) throws Exception;


}
