
<%@ page import="dao.DatabaseConnector" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="entity.MatHang741" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.MatHangDAO" %><%--
  Created by IntelliJ IDEA.
  User: 84981
  Date: 11/6/2023
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession httpSession = request.getSession();
    int Id = (int) httpSession.getAttribute("idLanNhap");
    Connection connection = DatabaseConnector.getConnection();
    List<MatHang741> matHang741s = new MatHangDAO(connection).getNhapHang(Id);
%>
<html>
<head>
    <title>Danh sách nhập hàng</title>
    <link href = "main.css" rel = "stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
    <div class="admin-container">
        <div class="header">
            <h1>Admin Page</h1>
        </div>
        <div class="container content-top">
        </div>
        <div class="container content-mid mt-3">
            <h2>Danh sách nhập hàng</h2>
            <table class="table table-striped" id="nccTable">
                <thead>
                <tr>
                    <th scope="col">Tên mặt hàng</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Đơn giá</th>
                    <th scope="col">Loại hàng</th>
                    <th scope="col">Ghi chú</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if(!matHang741s.isEmpty()){
                        for(MatHang741 matHang741 : matHang741s){


                %>
                <tr>
                    <th scope="row"><%=matHang741.getTen()%></th>
                    <th scope="row"><%=matHang741.getSoLuong()%></th>
                    <th scope="row"><%=String.format("%.2f", matHang741.getDonGia())%></th>
                    <th scope="row"><%=matHang741.getLoaiHang()%></th>
                    <th scope="row"><%=matHang741.getGhiChu()%></th>
                </tr>
                <%
                        }
                    }else{
                        System.out.println("No item");
                    }
                %>
                </tbody>
            </table>
        </div>

        <div class="container content-bottom mt-3 flex flex-start">
            <button type="button" class="btn btn-primary ml-3"><a href="/tkncc">Back</a></button>
        </div>
    </div>
</div>
</body>

</html>

