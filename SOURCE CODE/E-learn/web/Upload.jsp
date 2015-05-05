<!DOCTYPE html>
<html lang="en">
   <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
   <link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.2-dist/font-awesome-4.3.0/css/font-awesome.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
        a{
            color: white;
            font-size: 18px;
        }
    </style>
    
  </head>
<title> Key-Aggregate Cryptosystem</title>
<meta charset="utf-8">

 <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
        <div style="background-color: #009688; color: white; padding: 1px;"  class="masthead">
            <h1 class="">&nbsp;<i class="fa fa-cloud-upload fa-3x"></i> &nbsp;
                <span style="font-size: 40px;">E-LEARNING ADMIN</span></h1>
                    
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href ="AddAdmin.jsp">New Admin</a></li>
                    <li><a href ="AddCourse.jsp">Add Course</a></li>
                    <li><a href ="DelCourse.jsp">Delete Course</a></li>
                    <li><a href ="ModifyCourse.jsp"> Modify Course</a></li>
                    <li><a href ="AddExam.jsp">Add Exam</a></li>
                    <li><a href ="Upload.jsp">Upload</a></li>
                    <li><a href ="UserSkillResult.jsp">User Skill</a></li>
                    <li><a href ="View.jsp">View Course</a></li>
                    <li><a href ="Logout.jsp">Logout</a></li>
         
                </ul>
            </div>
        </div>
      <div class="box2" style="overflow: auto">
      
          <br> <h3>Welcome,</h3> <font size="5" color="green"><%=session.getAttribute("un")%>...</font><br></br>
                                    <a href=AdminMenu.jsp>Go To Menu </a>
                                    <center> 
                                        <h2>Upload</h2>
                                        
                                        <form class="search-form1" class="form-signin-heading"  method="post" enctype="multipart/form-data" action="Upload"  name="form1" onsubmit="return formValidation();"><fieldset>
       
                                                <table class="table-condensed" cellspacing="20px">
                                                    <tr>
                                                        
                                                        
                                                        <td>Course Name</td><td><input type="text" name="cname"></td>                              
                                                        
                                                        <td>Choose File</td>
                                                        <td>
  <input  type="file" value="" name="file" id="file"></input> </td>
                                                    </tr>
                                                    <tr><td></td><td><input class="submit" type="submit" value="Upload"></input></td></tr></table>
                                                
   </fieldset></form></center>
   
    </div>
    