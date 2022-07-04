package indi.web.servlet.manager;

import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelSelectedServlet", value = "/DelSelectedServlet")
public class DelSelectedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] ids = request.getParameterValues("_id");
        ManagerService ms = new ManagerServiceImpl();
        ms.deleteUserSelected(ids);
        response.sendRedirect(request.getContextPath() + "/ManagerFindUserByPageServlet");
    }
}
