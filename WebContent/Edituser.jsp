<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<h1>Edit Form</h1>  
<div class="container bg-image" style="background-image: url('back.png');">
      <form action="StudentCurd" method="post" class="register">
      <h3 style="color:Olive">APPLICATION FORM</h3>
      <input type="hidden" name="sid" value="${stu.getSid()}">
        <label for="fname">First name:</label><br>
        <input name="fname" type="text" id="fname" required value="${stu.getFname()}"><br>
        <label for="lname">Last name:</label><br>
        <input name="lname" type="text" id="lname" required value="${stu.getLname()}"><br>
        <label for="E_id">Email:</label><br>
        <input name="email" type="text" id="E_id" required value="${stu.getEmail()}"><br>
        <label for="ph_no">Phone num:</label><br>
        <input name="ph_no" type="number" id="ph_no" required value="${stu.getPhno()}"><br>
        <label for="branch">Branch to opt:</label><br>
        <input name="branch" type="text" id="branch" required value="${stu.getBranch()}"><br>
        <button type="submit" name="button" class="btn btn-success" id="submit">Submit</button>
      </form><br>
      <a href="/registration/StudentList">Studentlist</a>
    </div>
  
</body>  
</html>  
