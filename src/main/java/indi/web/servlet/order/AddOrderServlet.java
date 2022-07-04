package indi.web.servlet.order;

import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddOrderServlet", value = "/AddOrderServlet")
public class AddOrderServlet extends HttpServlet {
    OrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer loginid = (Integer) request.getSession().getAttribute("loginid");
        Integer id = Integer.parseInt(request.getParameter("id"));
        boolean b = orderService.addOrder(id, loginid);
        if (b == true){
            response.sendRedirect(request.getContextPath()+"/FindAllOrderWithNServlet");
        }
        else {

        }
    }
}
