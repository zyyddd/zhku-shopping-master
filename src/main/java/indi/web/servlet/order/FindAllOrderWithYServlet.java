package indi.web.servlet.order;

import indi.domain.Ordersuper;
import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FindAllOrderWithYServlet", value = "/FindAllOrderWithYServlet")
public class FindAllOrderWithYServlet extends HttpServlet {
    OrderService orderService = new OrderServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer loginid = (Integer) request.getSession().getAttribute("loginid");
        List<Ordersuper> orders = orderService.findAllOrderWithY(loginid);
        request.setAttribute("orders",orders);

        request.getRequestDispatcher("/userorder.jsp").forward(request,response);
    }
}
