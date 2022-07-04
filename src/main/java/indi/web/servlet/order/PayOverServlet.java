package indi.web.servlet.order;

import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PayOverServlet", value = "/PayOverServlet")
public class PayOverServlet extends HttpServlet {
    OrderService orderService = new OrderServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        Integer loginid = (Integer) request.getSession().getAttribute("loginid");
        boolean b = orderService.payforUpdateOrder(loginid);
        if (b == true){
            request.getRequestDispatcher("/FindAllOrderWithYServlet").forward(request,response);
        }
    }
}
