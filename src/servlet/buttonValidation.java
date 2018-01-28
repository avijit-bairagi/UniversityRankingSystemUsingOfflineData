package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class buttonValidation extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        try{
            response.setContentType("text/html");
            HttpSession session = request.getSession();
            String univName = request.getParameter("univ");
            session.setAttribute("univName",univName);
            RequestDispatcher dispatcher = request.getRequestDispatcher("university.jsp");
            dispatcher.forward(request,response);
        }catch (Exception e){
            System.out.println(e);
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
