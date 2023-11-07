package servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FilterNCCServlet")
public class FilterNCCServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()){
            // Lấy các tham số của form
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");

//            HttpSession session = request.getSession();
//            session.setAttribute("startDate", startDate);
//            session.setAttribute("endDate", endDate);
//
//            RequestDispatcher dispatcher = request.getRequestDispatcher("/tkncc");
//            dispatcher.forward(request, response);
            request.getSession().setAttribute("startDate",startDate);
            request.getSession().setAttribute("endDate", endDate);
            response.sendRedirect("/tkncc");

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
