package indi.web.servlet.goods;

import indi.domain.Goods;
import indi.domain.PageBean;
import indi.domain.User;
import indi.service.GoodsService;
import indi.service.ManagerService;
import indi.service.impl.GoodsServiceImpl;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@WebServlet(name = "FindGoodsByPageServlet", value = "/FindGoodsByPageServlet")
public class FindGoodsByPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String currentPage = request.getParameter("currentPage");
        String rows = request.getParameter("rows");

        if (currentPage == null || "".equals(currentPage)) {
            currentPage = "1";
        }

        if (rows == null || "".equals(rows)) {
            rows = "5";
        }

        Map<String, String[]> condition = request.getParameterMap();
        ManagerService ms = new ManagerServiceImpl();
        PageBean<Goods> pb = ms.findGoodByPage(currentPage, rows, condition);

        if (pb.getTotalCount() != 0) {
            request.setAttribute("pb", pb);
            request.setAttribute("condition", condition);
            request.getRequestDispatcher("/searchgoodpage.jsp").forward(request, response);
        } else {
            PrintWriter out = response.getWriter();
            out.print("<script type='text/javascript'>alert('查找不到相似商品');");
            out.print("location.href='"+request.getContextPath()+"/index.jsp';");
            out.print("</script>");
        }

    }
}
