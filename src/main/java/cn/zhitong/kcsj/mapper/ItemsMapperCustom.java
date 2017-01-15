package cn.zhitong.kcsj.mapper;

import cn.zhitong.kcsj.po.*;

import java.util.List;

public interface ItemsMapperCustom {

    public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo);



}