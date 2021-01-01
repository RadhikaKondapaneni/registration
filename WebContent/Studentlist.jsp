<!DOCTYPE html>  
<html>  
<head>  
<link rel="stylesheet" href="style.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
<%@page import="java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<style >
#t { 
            text-decoration: none; 
        } 
</style>
</head>  
<body>   
  <nav class="navbar navbar-light navbar-expand-md fixed-top">
      <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapse_target">
        <a class="navbar-brand">
          <img src="Logo.jpg" style="height:80px;width:240px;margin-left:50px;">
        </a>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a href="index.html" class="nav-link">Home</a>
        </li>
         <li class="nav-item">
          <a href="location.html" class="nav-link">Maps</a>
        </li>
        <li class="nav-item">
          <a href="/registration/StudentList" class="nav-link">StudentList</a>
        </li>
        <li class="nav-item">
          <a href="Blocks.html" class="nav-link">Departments</a>
        </li>
        <li class="nav-item">
          <a href="College.html" class="nav-link">Colleges and Schools</a>
        </li>
        <li class="nav-item">
          <a href="Faculty.html" class="nav-link">Faculty</a>
        </li>
      </ul>
       <ul class="nav navbar-nav navbar-right">
      <li><a href="Registration.html" class="button-test" style="text-decoration:none";>Register!<span>V</span> </a></li>
    </ul>
      </div>
    </nav>
    <div>
    
    </div>
    <div class="container" style="margin-top:110px;">
		<h2 style="color:Olive">Users List</h2> <br> 
		<h2>${message}</h2> 
		<table border="1" width="90%">  
		<tr><th>Sid</th><th>Fname</th><th>Lname</th><th>Branch</th>  
		<th>Phno</th><th>Email</th><th>Edit</th><th>Delete</th></tr>  
		<c:forEach items="${list}" var="u">  
		<tr><td>${u.getSid()}</td><td>${u.getFname()}</td><td>${u.getLname()}</td>  
		<td>${u.getBranch()}</td><td>${u.getPhno()}</td><td>${u.getEmail()}</td> 
		<td><a id="t" href="/registration/StudentCurd?id=${u.getSid()}&action=edit">Edit</a></td>  
		<td><a  id="t" href="/registration/StudentCurd?id=${u.getSid()}&action=delete">Delete</a></td></tr>  
		</c:forEach>  
		</table>  
		<br/><a  id="t" href="Registration.html">Add New User</a>
	</div>
 <footer>
      <div class="container-fluid foot">
        <p id="contact"><i class="fa fa-university" style="font-size:24px"></i>Contact Us!</p>
        <hr style="border-color:white;">
        <div class="row">
          <div class="col-sm-4">
            <span class="head"><i class="fa fa-home" style="font-size:24px;padding:10px;"></i>Address</span>
            <ul class="bullet">
              <li>Vignan's Foundation for Science, Technology & Research (Deemed to be University)</li>
              <li>Vadlamudi,Guntur-522213</li>
              <li>Andhra Pradesh.</li>
            </ul>
          </div>
          <div class="col-sm-4">
              <span class="head"><i class="fa fa-envelope" style="font-size:24px;padding:10px;"></i>Email & Phone</span>
              <ul class="bullet">
                <li>info@vignan.ac.in</li>
                <li>+91-863-2344 700 / 701</li>
                <li>Fax: 2344707</li>
              </ul>
          </div>
          <div class="col-sm-4">
              <span class="head"><i class="fa fa-globe" style="font-size:24px;padding:10px;"></i>Follow Us</span><br>
              <ul class="round">
                <li><a href="https://www.facebook.com/Vignan-University-351520444892263/?fref=ts" target="_blank" class="fa fa-facebook social"></a></li>
                <li><a href="https://twitter.com/VFSTRUniversity" target="_blank" class="fa fa-twitter social"></a></li>
                <li><a href="https://www.linkedin.com/company/vignan-s-foundation-for-science-technology-research" target="_blank" class="fa fa-linkedin social"></a></li>
                <li><a href="https://www.youtube.com/channel/UCzDKwPH7h79xDSOUgGSwjPQ/videos" target="_blank" class="fa fa-youtube social"></a></li>
              </ul>
          </div>
        </div>
      </div>
    </footer> 
   
</body>  
</html>  