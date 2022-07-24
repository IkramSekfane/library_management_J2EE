<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
  <head>
    <title>Add Author</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;900&display=swap"
      rel="stylesheet"
    />

    <link href="css/css_author_page.css" rel="stylesheet" type="text/css" />
  </head>

  <body>
    <div class="navigation">
      <span class="text-center">The ikram library</span>
      <span class="text-center" id="todaysdatef"></span>
      <a href="">Welcome Admin</a>
    </div>
    <h1 class="text-center ourheading">Add a Author</h1>

    <form action="Add_author.jsp" method="post">
      <label>Num :</label>
      <input type="number" name="num" value="" required />
      <label>Nom:</label>
      <input type="text" name="nom" required/>
      <label>Prenom:</label>
      <input type="text" name="prenom" required/>
      <label>Date de naissance:</label>
      <input type="date" name="date_naissance" required/>
      <label>Entre the ISSN of the book:</label>
      <input type="number" name="issn" required/>

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
