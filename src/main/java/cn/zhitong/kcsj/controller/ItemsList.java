package cn.zhitong.kcsj.controller;

import cn.zhitong.kcsj.po.Items;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 王波 on 2016/12/22.
 */
public class ItemsList implements Controller {

    public ModelAndView handleRequest(HttpServletRequest request,
                          HttpServletResponse response) throws Exception {

        //商品列表
        List<Items> itemsList = new ArrayList<Items>();

        Items items_1 = new Items();
        items_1.setName("联想笔记本");
        items_1.setPrice(6000f);
        items_1.setDetail("ThinkPad T430 联想笔记本电脑！");

        Items items_2 = new Items();
        items_2.setName("苹果手机");
        items_2.setPrice(5000f);

        itemsList.add(items_1);
        itemsList.add(items_2);

        ModelAndView mv = new ModelAndView();
        mv.addObject("itemsList", itemsList);

        mv.setViewName("items/itemsList");

        return mv;
    }
}
