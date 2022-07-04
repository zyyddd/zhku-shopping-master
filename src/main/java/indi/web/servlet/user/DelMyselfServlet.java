package indi.web.servlet.user;

import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelMyselfServlet", value = "/DelMyselfServlet")
public class DelMyselfServlet extends HttpServlet {
    ManagerService managerService = new ManagerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String loginid = Integer.toString((Integer)request.getSession().getAttribute("loginid"));
        boolean b = managerService.deleteUserById(loginid);
        if (b == true){
            request.getSession().removeAttribute("loginid");
            request.getSession().removeAttribute("username");
            request.getSession().removeAttribute("loginname");
            response.sendRedirect(request.getContextPath()+"/login2.jsp");
        }
    }
}
