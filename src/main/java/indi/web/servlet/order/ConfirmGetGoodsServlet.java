package indi.web.servlet.order;

import indi.domain.Orders;
import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.persistence.criteria.Order;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ConfirmGetGoodsServlet", value = "/ConfirmGetGoodsServlet")
public class ConfirmGetGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService orderService = new OrderServiceImpl();
        String id = request.getParameter("id");
        Integer _id = Integer.parseInt(id);
        Orders orders = new Orders(_id,0,0,0,null,null,null);
        orderService.changeOrderRecive(orders);
        request.getRequestDispatcher(request.getContextPath()+"/FindAllOrderWithYServlet").forward(request,response);
    }
}
