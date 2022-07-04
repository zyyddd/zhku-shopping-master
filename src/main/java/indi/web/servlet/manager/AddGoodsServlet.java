package indi.web.servlet.manager;

import indi.domain.Goods;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "AddGoodsServlet", value = "/AddGoodsServlet")
public class AddGoodsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PreparedStatement pstmt;//获得PreparedStatment对象 ，PreparedStatment执行SQL查询语句的API,比 Statement 更快
            //加载数据库驱动
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e2) {
                System.out.println("驱动找不到");
            }
            List Files = new ArrayList();//存取上传文件 String name = "";//存取上传人姓名
//        DiskFileItemFactory factory = new DiskFileItemFactory();
            //创建一个解析器工厂
            DiskFileItemFactory  fu =new DiskFileItemFactory ();
            //得到解析器，处理上传的文件数据，并将表单中每个输入项封装成一个FileItem 对象中
            ServletFileUpload upload = new ServletFileUpload(fu);
            upload.setHeaderEncoding("UTF-8");
            try {
                //存取表单所有信息
                List<FileItem> list = upload.parseRequest(request);//取得表单的数据内容
                //此层增强for循环遍历表单中有多少个上传文件将文件存到list中
                String goodName = null;
                String goodPrice = null;
                String goodDescibe = null;
                String sumGoods = null;
                String resGoods = null;
                String sumLove = null;
                String color = null;
                for(FileItem items:list){
                    if(items.isFormField()){//判断是否不是文件
                        if(items.getFieldName().equals("goodName")){
                            goodName=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                            System.out.println(goodName);
                        }
                        if (items.getFieldName().equals("goodPrice")){
                            goodPrice=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                        }
                        if (items.getFieldName().equals("goodDescibe")){
                            goodDescibe=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                        }
                        if (items.getFieldName().equals("sumGoods")){
                            sumGoods=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                        }
                        if (items.getFieldName().equals("resGoods")){
                            resGoods=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                        }
                        if (items.getFieldName().equals("sumLove")){
                            sumLove=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                        }
                        if (items.getFieldName().equals("color")){
                            color=new String(items.getString().getBytes("ISO8859_1"),"utf-8");
                            System.out.println(color);
                        }
                    }else{
                        Files.add(items);
                    }
                }
                //sql插入语句
                String sql ="insert into goods (_id,goodName,goodPrice,goodDescibe,goodImg,sumGoods,resGoods,sumLove,color) values(null ,?,?,?,?,?,?,?,?)";
                for(int i=0;i<Files.size();i++){
                    FileItem item = (FileItem)Files.get(i);//从集合取出文件
                    String filename = item.getName();//获得文件名
                    InputStream file = item.getInputStream();//将文件转为输入流
                    // read(byte[])方法,返回读入缓冲区的总字节数
                    byte[] buffer = new byte[file.available()];//将字节数组直接存进去数据库就可以
                    file.read(buffer);
                    try {
                        try {
                            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/zz_zksp?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC", "root", "123456");
                        } catch (SQLException throwables) {
                            throwables.printStackTrace();
                        }
                        pstmt = con.prepareStatement(sql);//预处理
                        Blob blob = con.createBlob();
                        blob.setBytes(1,buffer);
                        pstmt.setString(1, goodName);//将第一个占位符（?）设值
                        pstmt.setString(2, goodPrice);//将第一个占位符（?）设值
                        pstmt.setString(3, goodDescibe);//将第一个占位符（?）设值
                        pstmt.setBlob(4, blob);//将第一个占位符（?）设值
                        pstmt.setString(5, sumGoods);//将第一个占位符（?）设值
                        pstmt.setString(6, resGoods);//将第二个占位符设值
                        pstmt.setString(7, sumLove);//将第二个占位符设值
                        pstmt.setString(8, color);//将第二个占位符设值
                        pstmt.executeUpdate();//执行语句
                        file.close();//将流关闭
                        System.out.println("插入图片成功");
                    } catch (SQLException e1) {
                        System.out.println(e1);
                    }
                }
            } catch (FileUploadException e2) {
                e2.printStackTrace();
            }
            request.getRequestDispatcher("/ManagerFindGoodsByPageServlet").forward(request, response);
    }
}
