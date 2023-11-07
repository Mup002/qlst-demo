<%@ page import="java.sql.Connection" %>
<%@ page import="dao.DatabaseConnector" %>
<%@ page import="entity.MatHang741" %>
<%@ page import="dao.MatHangDAO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 84981
  Date: 11/6/2023
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>User Page</title>
  <link href="main.css" rel = "stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<div class="user-container">
  <div class="header">
    <h1>User Page</h1>
  </div>
  <div id="user-content" class="content d-flex justify-content-center align-items-center vh-100">
    <form class="d-flex" style="width: 50%;" method="post" id = "searchForm" action="TimKiemMHServlet">
      <input  class="form-control me-2" id ="searchInput" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit" id ="searchBtn">Search</button>
    </form>
  </div>
  <div class="container content-mid mt-3">
    <h2>Danh sách</h2>
    <table class="table table-striped" id="mathangTable">
      <thead>
      <tr>
        <th scope="col">Tên</th>
      </tr>
      </thead>
      <tbody>

      </tbody>
    </table>
  </div>
</div>
</body>
<script>
  document.getElementById('searchForm').addEventListener('submit', function(e) {
    e.preventDefault();
    var searchInput = document.getElementById('searchInput').value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var mathangTable = document.getElementById('mathangTable');
        mathangTable.innerHTML = ''
        mathangTable.innerHTML = this.responseText;
      }
    };
    xhttp.open('POST', 'TimKiemMHServlet', true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('searchInput=' + searchInput);
  });
</script>

</html>
