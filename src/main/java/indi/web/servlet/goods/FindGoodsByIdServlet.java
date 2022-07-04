package indi.web.servlet.goods;

import indi.domain.Goods;
import indi.service.GoodsService;
import indi.service.impl.GoodsServiceImpl;
import indi.web.servlet.BaseServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FindGoodsByIdServlet", value = "/FindGoodsByIdServlet")
public class FindGoodsByIdServlet extends BaseServlet {
    GoodsService goodsService = new GoodsServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tempid = request.getParameter("id");
        Integer id = Integer.parseInt(tempid);
        Goods good = goodsService.findGoodById(id);
        request.setAttribute("good",good);
        request.getRequestDispatcher("/goods-details.jsp").forward(request,response);
    }
}
