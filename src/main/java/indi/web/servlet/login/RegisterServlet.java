package indi.web.servlet.login;

import indi.domain.User;
import indi.service.LoginService;
import indi.service.impl.LoginServiceImpl;
import indi.web.servlet.BaseServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends BaseServlet {
    LoginService loginService = new LoginServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");
        String email = request.getParameter("email");
//        User user = new User(null,phone,email,password,2,phone,"男",null);
        User user=new User(null,phone,email,password,null,null,null,null);
        if (loginService.regist(user,confirmpassword)){
            request.getRequestDispatcher("/login2.jsp").forward(request,response);
        }else {
            request.setAttribute("register_msg","注册失败");
            request.getRequestDispatcher("/register.jsp").forward(request,response);
        }

    }
}
