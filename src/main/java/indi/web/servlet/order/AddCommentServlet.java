package indi.web.servlet.order;

import com.sun.org.apache.xpath.internal.operations.Or;
import indi.domain.Orders;
import indi.service.OrderService;
import indi.service.impl.OrderServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCommentServlet", value = "/AddCommentServlet")
public class AddCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Integer _id = Integer.parseInt(id);
        String comment = request.getParameter("comment");
        OrderService orderService = new OrderServiceImpl();
        boolean b = orderService.addComment(comment, _id);
        if (b==true){
            request.getRequestDispatcher("FindAllOrderWithYServlet").forward(request,response);
        }
    }
}
