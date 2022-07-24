<%-- Document : page_admin Created on : Feb 4, 2022, 12:11:29 AM Author : akami
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Welcome Admin</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link href="css/css_page_admin.css" rel="stylesheet" type="text/css"/>
  </head>
 

  <body>
    <div class="navigation">
      <span>The ikram library</span>
    </div>
    <div class="cardssection">
      <div class="cardinside">
        <i class="fas fa-user-plus"></i>
        <a href="author_page.jsp">add author</a>
      </div>
      <div class="cardinside">
        <i class="fas fa-book-medical"></i>
        <a href="book_page.jsp">add book</a>
      </div>
      <div class="cardinside">
        <i class="fas fa-book"></i>
        <a href="list_of_books.jsp">list of books</a>
      </div>
      <div class="cardinside">
        <i class="fas fa-users"></i>
        <a href="list_of_authors.jsp">list of authors</a>
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
