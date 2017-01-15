package cn.zhitong.kcsj.controller;

import cn.zhitong.kcsj.po.Items;
import org.springframework.web.HttpRequestHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 王波 on 2016/12/23.
 */
public class ItemsList_2 implements HttpRequestHandler {

    public void handleRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //商品列表
        List<Items> itemsList = new ArrayList<Items>();

        Items items_1 = new Items();
        items_1.setName("联想笔记本");
        items_1.setPrice(6000.88f);
        items_1.setDetail("ThinkPad T430 联想笔记本电脑！");

        Items items_2 = new Items();
        items_2.setName("苹果手机");
        items_2.setPrice(5000.99f);

        itemsList.add(items_1);
        itemsList.add(items_2);

        request.setAttribute("itemsList", itemsList);

        request.getRequestDispatcher("/WEB-INF/jsp/order/itemsList.jsp").forward(request, response);


    }
}
