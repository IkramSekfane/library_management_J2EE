<%-- Document : result_search Created on : Feb 2, 2022, 9:11:47 PM Author :
akami --%> <%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>JSP Page</title>
    <link href="css/css_result_search.css" rel="stylesheet" type="text/css" />
  </head>

  <body>
    <div class="navigation">
      <span>The ikram library</span>
      <span class="text-center" id="todaysdatef">todays date</span>
      <a href="signin_handler.jsp">welcom admin</a>
    </div>

    <sql:setDataSource var="DS" driver="com.mysql.jdbc.Driver"
      url="jdbc:mysql://localhost:3306/ikrambib" user="root" password=""
    />
    <div class="container">
      <c:if test="${param.rech eq 'author'}" var="test">
        <sql:query dataSource="${DS}" var="list">
          select * from books where issn=(select issn from ecrit where num =
          (select num from authors where nom ='<%=
          request.getParameter("recherche")%>'))</sql:query
        >
      </c:if>
      <c:if test="${param.rech eq 'book'}" var="test">
        <sql:query dataSource="${DS}" var="list">
          select books.issn,titre,resume,books.nbpages,domaine from
          books,ecrit,authors where books.issn=ecrit.issn and
          ecrit.num=authors.num and titre='<%=
          request.getParameter("recherche")%>'
        </sql:query>
      </c:if>
      <c:if test="${param.rech eq 'domaine'}" var="test">
        <sql:query dataSource="${DS}" var="list">
          select books.issn,books.titre,books.resume,books.nbpages,books.domaine
          from books,ecrit,authors where books.issn=ecrit.issn and
          ecrit.num=authors.num and domaine= '<%=
          request.getParameter("recherche")%>'
        </sql:query>
      </c:if>

      <div class="container">
        <h1 class="text-center">search result</h1>
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
