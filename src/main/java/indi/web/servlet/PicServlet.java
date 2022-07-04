package indi.web.servlet;

import indi.domain.Goods;
import indi.service.GoodsService;
import indi.service.impl.GoodsServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "PicServlet", value = "/PicServlet")
public class PicServlet extends HttpServlet {
    GoodsService goodsService = new GoodsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //不同物品的id传过来显示不同物品的图片
        Integer picid = Integer.parseInt(request.getParameter("id"));
        Goods good = goodsService.findGoodById(picid);
        Blob goodImg = good.getGoodImg();
        InputStream is = null;
        try {
            is = goodImg.getBinaryStream();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        ServletOutputStream soutStream = response.getOutputStream();
        if (is.equals(null)) {
            soutStream.println("图片无法显示！<br>");
        } else {
            byte[] buffer = new byte[1024];
            while (is.read(buffer) != -1) {
                soutStream.write(buffer);
            }
            soutStream.flush();
            soutStream.close();
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);

    }
}
