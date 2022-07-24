<%-- Document : Add_author Created on : Feb 2, 2022, 2:28:51 PM Author : akami
--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Add author</title>
  </head>
  <body>
    <h1>page for add author</h1>
    <sql:setDataSource
      var="DS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ikrambib"
      user="root" password=""
    />
    <sql:update dataSource="${DS}" var="add_author">
      insert into authors values(?,?,?,?)
      <sql:param value="${param.num}" />
      <sql:param value="${param.nom}" />
      <sql:param value="${param.prenom}" />
      <sql:param value="${param.date_naissance}" />
    </sql:update>
    
    <sql:update dataSource="${DS}" var="add_author">
      insert into ecrit values(?,?)
      <sql:param value="${param.issn}" />
      <sql:param value="${param.num}" />
    </sql:update>
      
    <c:redirect url="list_of_authors.jsp"></c:redirect>
  </body>
</html>
