<%@page import="Connection.DB"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<html>
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
    <body>
        
              <script type="text/javascript">

function fun2()
{
var c = document.f2.aname.value;
var d = document.f2.pass.value;

if(c=="")
{
alert("Enter Admin Name");
document.f2.aname.focus();
return false;
}
if(d=="")
{
alert("Enter password");
document.f2.pass.focus();
return false;
}
}

</script>
<%
    DB Db=new DB();
Connection con=Db.con;

String method=request.getMethod();
      if(method.equals("GET"))
       {
  %>
          
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

      
      <br/>
    </div>
  <FORM name=xyz action="AddAdmin.jsp" method="post" onsubmit="fun2()">
  
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            
                <h2 class="text-center form-signin-heading">Adding New Admin login</h2>
                <br/>
                <input style="border-bottom-left-radius: 0px; border-bottom-right-radius: 0px;" type="text" name="aname" class="form-control" placeholder="username" required autofocus>
                <input style="border-top-left-radius: 0px; border-top-right-radius: 0px;"  type="password" name="apass" class="form-control" placeholder="Password" required>
                <br/>
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="REGISTER">


        </div>
                <div class="col-lg-4"></div>
    </div>
    
</FORM>
  
   <%        }
          else if(method.equals("POST"))
          {   
          String aname = request.getParameter("aname");
          String pass = request.getParameter("pass");
          
	 try{
                   PreparedStatement ps = con.prepareStatement("insert into admin values(?,?) ");
	ps.setString( 1, aname);
	ps.setString( 2, pass);
	ps.executeUpdate();
 	ps.close();	
%>          
    	
    
    
    <center><font class="text-success"><h2>Admin Name Created  Successfully</h2>
        <a href=AdminMenu.jsp class="text-capitalize"> Go To Menu</a>
        
<%		
         con.close();
                 }catch(Exception e){     e.printStackTrace();           }    
          }   
%>
</body>
        </html>