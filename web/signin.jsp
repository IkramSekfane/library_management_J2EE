<%-- Document : signin_handler Created on : Feb 3, 2022, 11:33:08 PM Author :
akami --%> 
 <%@page contentType="text/html" pageEncoding="UTF-8"%> 
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="css/css_signin.css" rel="stylesheet" type="text/css"/>
  
  <title>sign in</title>
</head>
  <sql:setDataSource
      var="DS"
      driver="com.mysql.jdbc.Driver"
      url="jdbc:mysql://localhost:3306/ikrambib"
      user="root"
      password=""
    />

<c:choose>
    <c:when test="${param.user=='admin' and param.pass =='admin'}">
        <c:redirect url="page_admin.jsp"></c:redirect> 
    </c:when>
</c:choose>
<body>
  <div class="navigation">
    <span class="text-center">The ikram library</span>
  </div>
  <div class="oursigninform">
    <h1 class="text-center ourheading">Sign in</h1>
    
    <form method="post" action="signin.jsp">
      <label>User name:</label>
      <input type="text" name="user" id="user" />
      <label>Password:</label>
      <input type="password" name="pass" id="pass" />
      <input class="oursubmit" type="submit" />
    </form>
  </div>
</body>
    <script
    src="https://code.jquery.com/jquery-3.6.0.js"
    integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"
  ></script>
  <script>
    var today = new Date();

    var date =
      today.getFullYear() +
      "-" +
      (today.getMonth() + 1) +
      "-" +
      today.getDate();
    $("#todaysdatef").html(date);
  </script>
 </html>
 
