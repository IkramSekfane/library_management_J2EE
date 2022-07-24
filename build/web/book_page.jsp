<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
  <head>
    <title>Add Book</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap"
      rel="stylesheet"
    />
    <link href="css/css_book_page.css" rel="stylesheet" type="text/css"/>
  </head>
 
  <body>
    <div class="navigation">
      <span>The ikram library</span>
      <span class="text-center" id="todaysdatef"></span>
      <a href="">Welcome Admin</a>
    </div>
    <h1 class="text-center ourheading">Add a Book</h1>

    <form action="Add_book.jsp" method="post">
      <label>Issn :</label>
      <input type="text" name="issn" value="" required />
      <label>Titre:</label>
      <input type="text" name="titre" required/>
      <label>Résume:</label>
      <textarea name="resume"  rows="10" required ></textarea> 
      <label>Nombre des pages:</label>
      <input type="number" name="nbpages" required />
      <label>Domaine:</label>
      <input type="text" name="domaine" required />

      <input type="submit" value="Add" />
    </form>
 
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
