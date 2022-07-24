<%-- Document : search_page Created on : Feb 2, 2022, 8:50:21 PM Author : akami
--%> 
 <%@page contentType="text/html" pageEncoding="UTF-8"%> 
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>search page</title>
    <link href="css/css_search_page.css" rel="stylesheet" type="text/css"/>
  </head>
  

  <body>
    <div class="navigation">
      <span>The ikram library</span>
      <span class="text-center" id="todaysdatef"></span>
      <a href="signin.jsp">sign in</a>
    </div>
    <div class="anathorherosection">
      <h1>Search your favorit book</h1>
    
      <form action="result_search.jsp" method="post">
     <input type="text" name="recherche"/>
        <p>
          <span>
            <input type="radio" name="rech" value="author" id="auteur" />
            <label for="auteur">auteur</label>
          </span>
          <span>
            <input type="radio" name="rech" value="book" id="book" checked />
            <label for="book">book</label>
          </span>
          <span>
            <input type="radio" name="rech" value="domaine" id="domaine" />
            <label for="domaine"> domaine </label>
          </span>
        </p>
        <input type="submit"/>
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
