<%@ page import="java.sql.Connection" %>
<%@ page import="dao.DatabaseConnector" %>
<%@ page import="entity.MatHang741" %>
<%@ page import="dao.MatHangDAO" %><%--
  Created by IntelliJ IDEA.
  User: 84981
  Date: 11/7/2023
  Time: 12:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession httpSession = request.getSession();
    int Id = (int) httpSession.getAttribute("idMH");
    Connection connection = DatabaseConnector.getConnection();
    MatHang741 matHang741 = new MatHangDAO(connection).getMatHang(Id);
%>
<html>
<head>
    <title>Chi tiet mat hang</title>
</head>
<body>
<%
    if(matHang741 != null){
%>
<div class="matHangInfo">
    <h2>Thông tin mặt hàng</h2>
    <p>ID: <%= matHang741.getId() %></p>
    <p>Loại hàng: <%= matHang741.getLoaiHang() %></p>
    <p>Tên: <%= matHang741.getTen() %></p>
    <p>Ghi chú: <%= matHang741.getGhiChu() %></p>
    <p>Đơn giá: <%= matHang741.getDonGia() %></p>
    <p>Số lượng: <%= matHang741.getSoLuong() %></p>
</div>
<%
} else {
%>
<div class="error">
    <p>Không tìm thấy thông tin mặt hàng.</p>
</div>
<%
    }
%>
</body>
</html>
