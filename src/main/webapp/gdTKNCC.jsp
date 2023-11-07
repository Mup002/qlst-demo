<%--
  Created by IntelliJ IDEA.
  User: 84981
  Date: 10/23/2023
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="entity.NCC741" %>
<%@page import="dao.TKNCCDAO" %>
<%@ page import="dao.DatabaseConnector" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="jakarta.servlet.http.*" %>

<%
  HttpSession httpSession = request.getSession();
  String startDate = (String) httpSession.getAttribute("startDate");
  String endDate = (String) httpSession.getAttribute("endDate");

  Connection connection = DatabaseConnector.getConnection();

  List<NCC741> nccs = new TKNCCDAO(connection).getTKNCC(startDate,endDate);
//  if(startDate == null && endDate == null){
//    nccs = new TKNCCDAO(connection).getAllNCC();
//  }else{
//    nccs = new TKNCCDAO(connection).filterNCC(startDate,endDate);
//  }
  System.out.println(startDate);
  System.out.println(endDate);
%>
<html>
<head>
  <title>Danh sách nhà cung cấp</title>
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
      <form action="FilterNCCServlet" method="post" id="dateForm">
        <input type="hidden" name="startDate" id="hiddenStartDate">
        <input type="hidden" name="endDate" id="hiddenEndDate">
        <div class="row justify-content-end">
          <div class="col-4">
            <div class="dateStart">
              <label>Ngày bắt đầu</label>
              <input id="datepicker1" class="form-control" />
            </div>
          </div>
          <div class="col-4 ml-5">
            <div class="dateEnd">
              <label>Ngày kết thúc</label>
              <input id="datepicker2" class="form-control" />
            </div>
          </div>
        </div>
      </form>

    </div>

    <div class="container content-mid mt-3">
      <h2>Danh sách nhà cung cấp</h2>
      <table class="table table-striped" id="nccTable">
        <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Tên</th>
          <th scope="col">Số lần nhập hàng</th>
          <th scope="col">Doanh thu</th>
        </tr>
        </thead>
        <tbody>
        <%
          if(!nccs.isEmpty()){
            for(NCC741 ncc : nccs){


        %>
        <tr>
          <th scope="row"><%=ncc.getId()%></th>
          <th scope="row"><a href="tk-lan-nhap-hang?id=<%=ncc.getId()%>"><%=ncc.getTen()%></a></th>
          <th scope="row"><%=ncc.getSoLanNhapHang()%></th>
          <th scope="row"><%=String.format("%.2f", ncc.getDoanhthu())%></th>

        </tr>
        <%
            }
          }else{
            System.out.println("No ncc");
            }
        %>
        </tbody>
      </table>
    </div>

    <div class="container content-bottom mt-3 flex flex-start">
      <button type="button" class="btn btn-primary ml-3"><a  href ="/xemthongke">Back</a></button>
    </div>
  </div>
</div>
</body>
<script>
  $(document).ready(function(){
    $('#datepicker1').datepicker({
      uiLibrary: 'bootstrap5',
    });
    $('#datepicker2').datepicker({
      uiLibrary: 'bootstrap5',
    });

    $('#datepicker1, #datepicker2').change(function(event){
      event.preventDefault();
      var startDate = $('#datepicker1').val();
      var endDate = $('#datepicker2').val();


      var formattedStartDate = formatDate(startDate);
      var formattedEndDate = formatDate(endDate);

      $('#hiddenStartDate').val(formattedStartDate);
      $('#hiddenEndDate').val(formattedEndDate);

      if(startDate && endDate){
        $('#dateForm').submit();
      }
    });
  });
  function formatDate(inputDate) {
    var parts = inputDate.split('/');
    var year = parts[2];
    var month = parts[0].length === 1 ? '0' + parts[0] : parts[0];
    var day = parts[1].length === 1 ? '0' + parts[1] : parts[1];

    return year + '-' + month + '-' + day;
  }


</script>
</html>

