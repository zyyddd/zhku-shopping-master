package indi.web.servlet.manager;

import indi.domain.Orders;
import indi.service.ManagerService;
import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.persistence.criteria.Order;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SendOrdersServlet", value = "/SendOrdersServlet")
public class SendOrdersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Integer _id = Integer.parseInt(id);
        OrderService orderService = new OrderServiceImpl();
        Orders orders  = new Orders(_id);
        boolean b = orderService.changeOrderSend(orders);
        if (b == true){
            request.getRequestDispatcher("ManagerFindOrderByPageServlet").forward(request,response);
        }
    }
}
