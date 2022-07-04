package indi.web.servlet.goods;

import indi.domain.Goods;
import indi.service.GoodsService;
import indi.service.impl.GoodsServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowgoodsServlet", value = "/ShowgoodsServlet")
public class ShowgoodsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GoodsService goodsService = new GoodsServiceImpl();
        List<Goods> goods = goodsService.showAllGoods();
        request.setAttribute("goods",goods);
        request.getRequestDispatcher("/showGoods.jsp").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

}
