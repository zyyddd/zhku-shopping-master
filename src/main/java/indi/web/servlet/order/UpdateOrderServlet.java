package indi.web.servlet.order;

import indi.domain.Goods;
import indi.mapper.OrderMapper;
import indi.service.GoodsService;
import indi.service.OrderService;
import indi.service.impl.GoodsServiceImpl;
import indi.service.impl.OrderServiceImpl;
import indi.web.servlet.BaseServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpdateOrderServlet", value = "/UpdateOrderServlet")
public class UpdateOrderServlet extends BaseServlet {
    OrderService orderService = new OrderServiceImpl();
    GoodsService goodsService = new GoodsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String type = request.getParameter("type");
        Integer goodId = Integer.parseInt(request.getParameter("goodId"));
        Integer userId = Integer.parseInt(request.getParameter("userId"));
        Integer goodCount = Integer.parseInt(request.getParameter("goodCount"));
        String isSend = request.getParameter("isSend");
        Integer id = Integer.parseInt(request.getParameter("_id"));
        Goods good = goodsService.findGoodById(goodId);
        Integer resGoods = good.getResGoods();
        boolean b = false;
        if (type.equals("sub") && goodCount > 1) {
            b = orderService.updateOrder(goodId, userId, goodCount - 1, isSend, id);
            if (b == true) {
                request.getRequestDispatcher("/FindAllOrderWithNServlet").forward(request, response);
            } else {

            }
        }
        else if (type.equals("sup") && goodCount < resGoods) {
            boolean b1 = orderService.updateOrder(goodId, userId, goodCount + 1, isSend, id);
            if (b1 == true) {
                request.getRequestDispatcher("/FindAllOrderWithNServlet").forward(request, response);
            } else {
            }
        }

        else {
            request.getRequestDispatcher("/FindAllOrderWithNServlet").forward(request, response);
        }
    }
}
