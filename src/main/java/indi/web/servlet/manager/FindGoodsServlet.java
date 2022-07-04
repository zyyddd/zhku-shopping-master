package indi.web.servlet.manager;

import indi.domain.Goods;
import indi.domain.User;
import indi.service.GoodsService;
import indi.service.ManagerService;
import indi.service.impl.GoodsServiceImpl;
import indi.service.impl.ManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FindGoodsServlet", value = "/FindGoodsServlet")
public class FindGoodsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        GoodsService gs = new GoodsServiceImpl();
        Goods good = gs.findGoodById(Integer.parseInt(id));
        request.setAttribute("good", good);
        request.getRequestDispatcher("/updateGoods.jsp").forward(request, response);
    }
}
