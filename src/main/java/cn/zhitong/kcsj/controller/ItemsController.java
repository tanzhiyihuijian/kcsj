package cn.zhitong.kcsj.controller;

import cn.zhitong.kcsj.po.ItemsCustom;
import cn.zhitong.kcsj.service.ItemsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 王波 on 2016/12/25.
 */
@Controller

// 窄化请求映射
// 为了对 url进行分类, 可以在这里定义根路经, 最终访问的 url是: 根路经 + 子路径  即 /items/queryItems
@RequestMapping("/items")
public class ItemsController {

    @Resource(name = "itemsService")
    private ItemsService itemsService;

    //  商品查询

    @RequestMapping("/queryItems")
    public ModelAndView queryItems() throws Exception {

        List<ItemsCustom> itemsList = itemsService.findItemsList(null);

        ModelAndView mv = new ModelAndView();

        mv.addObject("itemsList", itemsList);
        mv.setViewName("items/itemsList");

        return mv;

    }


    @RequestMapping("learnBootstrap")
    public ModelAndView learnBootstrap() {

        ModelAndView mv = new ModelAndView();

        mv.setViewName("bootstrap/index");

        return mv;
    }



    // 商品信息修改页面的展示
    @RequestMapping("editItems")
    public ModelAndView editItems(Integer items_id) throws Exception {

        ItemsCustom itemsCustom = itemsService.findItemsById(1);

        ModelAndView mv = new ModelAndView();

        mv.addObject("itemsCustom", itemsCustom);
        mv.setViewName("items/editItems");

        return mv;
    }




    // 商品信息修改提交




}



