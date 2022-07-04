package indi.web.servlet.order;

import indi.domain.Orders;
import indi.domain.Ordersuper;
import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;
import indi.web.servlet.BaseServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FindAllOrderWithNServlet", value = "/FindAllOrderWithNServlet")
public class FindAllOrderWithNServlet extends BaseServlet {
    OrderService orderService = new OrderServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer loginid = (Integer) request.getSession().getAttribute("loginid");
        List<Ordersuper> orders = orderService.findAllOrderWithN(loginid);
        List<Integer> sumandprice = orderService.numandpriceOfAll(loginid);
        String sumCount = Integer.toString(sumandprice.get(0));
        String sumPrice = Integer.toString(sumandprice.get(1));
        long l = System.currentTimeMillis();
        request.setAttribute("time",l);
        request.setAttribute("sumCount",sumCount);
        request.setAttribute("sumPrice",sumPrice);
        request.setAttribute("orders",orders);
        request.getRequestDispatcher("/cart.jsp").forward(request,response);
    }
}
