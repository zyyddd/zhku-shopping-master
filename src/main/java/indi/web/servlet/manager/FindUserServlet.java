package indi.web.servlet.manager;

import indi.domain.User;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FindUserServlet", value = "/FindUserServlet")
public class FindUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("id");
        ManagerService ms = new ManagerServiceImpl();
        User user = ms.findUserById(uid);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/updateUser.jsp").forward(request, response);
    }
}
