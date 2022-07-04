package indi.web.servlet.manager;

import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelUserServlet", value = "/DelUserServlet")
public class DelUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("_id");
        ManagerService ms = new ManagerServiceImpl();
        ms.deleteUserById(uid);

        response.sendRedirect(request.getContextPath() + "/ManagerFindUserByPageServlet");
    }
}
