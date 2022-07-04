package indi.web.servlet.user;

import indi.domain.User;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserMessageServlet", value = "/UserMessageServlet")
public class UserMessageServlet extends HttpServlet {
    ManagerService managerService = new ManagerServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String loginid = Integer.toString((Integer) request.getSession().getAttribute("loginid")) ;
        User user = managerService.findUserById(loginid);
        request.setAttribute("user",user);
        request.getRequestDispatcher("/usermessage.jsp").forward(request,response);

    }
}
