package servlet;

import java.sql.Connection;
import dao.DatabaseConnector;
import dao.MatHangDAO;
import entity.MatHang741;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/TimKiemMHServlet")
public class TimKiemMHServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String searchInput = request.getParameter("searchInput");
            if (searchInput != null && !searchInput.isEmpty()) {
                request.getSession().setAttribute("searchInput", searchInput);
            }

            Connection connection = DatabaseConnector.getConnection();
            ArrayList<MatHang741> matHang741s = new MatHangDAO(connection).timKiemTheoTen(searchInput);

            out.println("<table>");
            for (MatHang741 matHang741 : matHang741s) {
                out.println("<tr>");
                out.println("<td><a href='/chi-tiet-mh?id=" + matHang741.getId() + "'>" + matHang741.getTen() + "</a></td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
