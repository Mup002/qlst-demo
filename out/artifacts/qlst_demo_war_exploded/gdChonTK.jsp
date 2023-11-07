<%--
  Created by IntelliJ IDEA.
  User: 84981
  Date: 10/23/2023
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang chu thong ke</title>
    <link href="main.css" rel = "stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div>
  <div class="admin-container">
    <div class="header">
      <h1>Admin Page</h1>
    </div>
    <div class="content mt-3">
      <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
        <option selected>Chon thong ke</option>
        <option value="1">Nha cung cap</option>
        <option value="2">Mat hang</option>
        <option value="3">Doanh thu</option>
      </select>
    </div>
    <div class = "container">
      <div class = "row">
        <div class = "col-sm-12" align = "center">
          <input type = "date" name = "date">
        </div>

      </div>
    </div>
  </div>

</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script>
  $(function(){
    $('#datepicker').datepicker();
  });
</script>
</html>
