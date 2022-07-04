package indi.web.servlet.manager;

import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelGoodsServlet", value = "/DelGoodsServlet")
public class DelGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String goodid = request.getParameter("_id");
        ManagerService ms = new ManagerServiceImpl();
        ms.deleteGood(goodid);
        response.sendRedirect(request.getContextPath() + "/ManagerFindGoodsByPageServlet");
    }
}
