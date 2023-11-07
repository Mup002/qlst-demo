package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TKCacLanNhapHangServlet",urlPatterns = "/tk-lan-nhap-hang")
public class TKCacLanNhapHangServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = resp.getWriter()){
            int id = Integer.parseInt(req.getParameter("id"));
            req.getSession().setAttribute("idNCC",id);
            resp.sendRedirect("/tkcaclannhaphang");
        }
    }
}
