<%-- Document : page_accueil Created on : Feb 2, 2022, 2:22:58 PM Author : akami
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" src="./style.css" />
    <title>Home page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap"
      rel="stylesheet"
    />
    <link href="css/css_home_page.css" rel="stylesheet" type="text/css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
      integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>

  <body>
    <div class="backgorund">
      <div class="navigation">
        <span>The ikram library</span>
        <span class="text-center" id="todaysdatef"></span>
        <a href="signin.jsp">sign in Admin</a>
      </div>
      <div class="herosection">
        <div class="leftsection">
          <h1>The world of boooks</h1>
          <p>Find a book you want</p>
          <div class="bouttonsseach">
            <button><a href="./search_page.jsp">Search for books</a></button>
            <div>
              <p style="font-weight: bold">our books count</p>
              <p>5000 book</p>
            </div>
          </div>
          <div class="technologeisused">
            <p>technologies used</p>
            <span>
              <i class="fa-brands fa-html5"></i>
            </span>
            <span> <i class="fa-brands fa-css3"></i> </span
            ><span><i class="fa-brands fa-js"></i></span>
            <span><i class="fa-brands fa-java"></i></span>
          </div>
        </div>
        <div class="rightsection">
          <img src="./pic1.svg" alt="" />
        </div>
      </div>
      <div class="footer">
        <ul class="foote_bottom_ul_amrc">
          <li><a>Home</a></li>
          <li><a >About</a></li>
          <li><a >Services</a></li>
          <li><a >Pricing</a></li>
          <li><a >Blog</a></li>
          <li><a> Contact</a></li>
        </ul>
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
    $("#todaysdatef").htm