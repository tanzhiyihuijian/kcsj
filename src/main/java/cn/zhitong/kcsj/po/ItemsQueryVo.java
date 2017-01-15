package cn.zhitong.kcsj.po;

import java.util.List;

/**
 * Created by 王波 on 2016/12/24.
 */

public class ItemsQueryVo {

    // 商品信息
    private Items items;

    // 为了系统的扩展性, 对原始生成的 po类进行扩展
    private ItemsCustom itemsCustom;

    // 批量商品信息
    private List<ItemsCustom> itemsList;

    public Items getItems() {
        return items;
    }

    public void setItems(Items items) {
        this.items = items;
    }

    public ItemsCustom getItemsCustom() {
        return itemsCustom;
    }

    public void setItemsCustom(ItemsCustom itemsCustom) {
        this.itemsCustom = itemsCustom;
    }

    public List<ItemsCustom> getItemsList() {
        return itemsList;
    }

    public void setItemsList(List<ItemsCustom> itemsList) {
        this.itemsList = itemsList;
    }
}
