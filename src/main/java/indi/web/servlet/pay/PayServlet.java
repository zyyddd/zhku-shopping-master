package indi.web.servlet.pay;

import com.alipay.api.AlipayApiException;
import indi.domain.AlipayBean;
import indi.service.PayService;
import indi.service.impl.PayServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PayServlet",urlPatterns = "/pay")
public class PayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String outTradeNo = request.getParameter("outTradeNo");
        String subject = request.getParameter("subject");
        String totalAmount = request.getParameter("totalAmount");
        String body = request.getParameter("body");
        AlipayBean alipayBean = new AlipayBean();
        alipayBean.setOut_trade_no(outTradeNo);
        alipayBean.setSubject(subject);
        alipayBean.setTotal_amount(totalAmount);
        alipayBean.setBody(body);
        PayService payService = new PayServiceImpl();
        PrintWriter out = response.getWriter();
        try {
            String result =  payService.aliPay(alipayBean);
            out.print(result);
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
    }
}
