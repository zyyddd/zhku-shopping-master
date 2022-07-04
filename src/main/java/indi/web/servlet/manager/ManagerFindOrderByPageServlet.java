package indi.web.servlet.manager;

import indi.domain.Orders;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerFindOrderByPageServlet", value = "/ManagerFindOrderByPageServlet")
public class ManagerFindOrderByPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ManagerService managerService = new ManagerServiceImpl();
        List<Orders> orders = managerService.FindAllOrdersByY();
        request.setAttribute("orders",orders);
        request.getRequestDispatcher("/managerOrdersList.jsp").forward(request,response);
    }
}
