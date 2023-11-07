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
      <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" onchange="redirectToSelectedOption(this)">
        <option selected>Chon thong ke</option>
        <option value="1">Nha cung cap</option>
        <option value="2">Mat hang</option>
        <option value="3">Doanh thu</option>
      </select>
    </div>

  </div>
</div>
<script>
  function redirectToSelectedOption(selectElement){
    var selectedValue = selectElement.value;
    if(selectedValue === '1'){
      window.location.href = '/tkncc';
    }else if(selectedValue === '2'){

    }else if(selectedValue === '3'){

    }
  }
</script>
</body>
</html>
