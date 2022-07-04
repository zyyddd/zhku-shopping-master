package indi.web.servlet.manager;

import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DelSelectedGoodsServlet", value = "/DelSelectedGoodsServlet")
public class DelSelectedGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] ids = request.getParameterValues("_id");
        ManagerService ms = new ManagerServiceImpl();
        ms.deleteGoodSelected(ids);
        response.sendRedirect(request.getContextPath() + "/ManagerFindGoodsByPageServlet");
    }
}
