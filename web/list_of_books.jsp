<%-- 
    Document   : list_of_books
    Created on : Feb 4, 2022, 7:20:36 PM
    Author     : akami
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>list of books</title>
        <link href="css/css_list_of_books.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <div class="navigation">
      <span>The ikram library</span>
      <span class="text-center" id="todaysdatef"></span>
      <a href="signin_handler.jsp"> welcom admin</a>
    </div>
    <sql:setDataSource
      var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ikrambib"
      user="root" password=""
    />
    <sql:query dataSource="${DS}" var="list"> select * from books </sql:query>
    <br />
    <div class="container">
      <h1 class="text-center">list of books</h1>
          <table border="1">
        <tr>
          <td>Issn</td>
          <td>Titre</td>
          <td>Résume</td>
          <td>Nombre de pages</td>
          <td>Domaine</td>
        </tr>
        <c:forEach items="${list.rows}" var="ligne">
          <tr>
            <td><c:out value="${ligne.issn}" /></td>
            <td><c:out value="${ligne.titre}" /></td>
            <td><c:out value="${ligne.resume}" /></td>
            <td><c:out value="${ligne.nbpages}" /></td>
            <td><c:out value="${ligne.domaine}" /></td>
          </tr>
        </c:forEach>
      </table>
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
