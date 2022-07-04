package indi.web.servlet.user;

import indi.domain.User;
import indi.service.ManagerService;
import indi.service.impl.ManagerServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet(name = "UpdateUserMessageServlet", value = "/UpdateUserMessageServlet")
public class UpdateUserMessageServlet extends HttpServlet {
    ManagerService managerService = new ManagerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Map<String, String[]> map = request.getParameterMap();
        String[] pwds = map.get("pwd");
        String newpwd = pwds[0];
        String loginid = Integer.toString((Integer) request.getSession().getAttribute("loginid"));
        User tempuser = managerService.findUserById(loginid);
        String oldpwd = tempuser.getPwd();
        User user = new User();
        try {
            BeanUtils.populate(user, map);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        boolean b = managerService.updateUser(user);
        if (newpwd.equals(oldpwd) && b == true) {
            response.sendRedirect(request.getContextPath() + "/UserMessageServlet");
        }else {
            response.sendRedirect(request.getContextPath()+"/login2.jsp");
        }


    }
}
