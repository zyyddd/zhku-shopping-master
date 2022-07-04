package indi.web.servlet.login;

import indi.domain.User;
import indi.service.LoginService;
import indi.service.impl.LoginServiceImpl;
import indi.web.servlet.BaseServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends BaseServlet {
    LoginService loginService = new LoginServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String loginname = request.getParameter("loginname");
        String loginpassword = request.getParameter("loginpassword");
        User loginuser = loginService.login(loginname, loginpassword);
        if (loginuser != null) {
            Integer role = loginuser.getRole();
            if (role == 2) {
                String name = loginuser.getName();
                request.getSession().setAttribute("loginname", loginname);
                request.getSession().setAttribute("username", name);
                request.getSession().setAttribute("loginid", loginuser.get_id());
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else if (role == 1) {
                response.sendRedirect(request.getContextPath()+"/managerIndex.jsp");
            }

        } else {
            request.setAttribute("login_msg", "用户名或密码错误！");
            request.getRequestDispatcher("/login2.jsp").forward(request, response);
        }

    }
}
