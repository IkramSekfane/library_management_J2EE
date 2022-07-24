<%-- Document : Add_book Created on : Feb 2, 2022, 2:28:18 PM Author : akami
--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Add book</title>
  </head>
  <body>
    <h1>page for add book</h1>
    <sql:setDataSource
      var="DS"
      driver="com.mysql.jdbc.Driver"
      url="jdbc:mysql://localhost:3306/ikrambib"
      user="root"
      password=""
    />
    <sql:update dataSource="${DS}" var="add_book">
      insert into books values(?,?,?,?,?)
      <sql:param value="${param.issn}" />
      <sql:param value="${param.titre}" />
      <sql:param value="${param.resume}" />
      <sql:param value="${param.nbpages}" />
      <sql:param value="${param.domaine}" />
    </sql:update>
      <c:redirect url="list_of_books.jsp"></c:redirect> 
  </body>
</html>
