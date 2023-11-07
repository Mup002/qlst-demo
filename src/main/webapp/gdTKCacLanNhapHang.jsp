<%@ page import="java.sql.Connection" %>
<%@ page import="dao.DatabaseConnector" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.LanNhapHang741" %>
<%@ page import="dao.TKLanNhapHangDAO" %><%--
  Created by IntelliJ IDEA.
  User: 84981
  Date: 11/6/2023
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession httpSession = request.getSession();
    int Id = (int) httpSession.getAttribute("idNCC");
    Connection connection = DatabaseConnector.getConnection();
    List<LanNhapHang741> LanNhapHang741s = new TKLanNhapHangDAO(connection).getTKLanNhapHang(Id);
%>
<html>
<head>
    <title>Danh sách các lần nhập hàng</title>
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
            <h2>Danh sách các lần nhập hàng</h2>
            <table class="table table-striped" id="nccTable">
                <thead>
                <tr>
                    <th scope="col">Ngày nhập</th>
                    <th scope="col">Tổng tiền</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if(!LanNhapHang741s.isEmpty()){
                        for(LanNhapHang741 LanNhapHang741 : LanNhapHang741s){


                %>
                <tr>
                    <th scope="row"><a href = "/tk-nhap-hang?id=<%=LanNhapHang741.getId()%>"><%=LanNhapHang741.getNgaynhap()%></a></th>
                    <th scope="row"><%=String.format("%.2f", LanNhapHang741.getTongtien())%></th>
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
