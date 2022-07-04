package indi.web.servlet.order;

import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelOrderByIdServlet", value = "/DelOrderByIdServlet")
public class DelOrderByIdServlet extends HttpServlet {
    OrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        Integer id = Integer.parseInt(request.getParameter("id"));
        boolean b = orderService.deleteOrder(id);
        if (b == true) {
            request.getRequestDispatcher("/FindAllOrderWithNServlet").forward(request, response);
        }else {
        }
    }
}
