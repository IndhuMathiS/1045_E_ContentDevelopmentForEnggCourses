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
var c = document.f2.course_name;
var e= document.f2.category;
var d = document.f2.sessions;

if(C_validation(c))
{
if(Fn_validation(e))
{
if(Cn_Validation(d,5))
{
return true;
}
}
}
return false; 
}

function C_validation(uid,mx)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Course Name should not be empty ");
uid.focus();
return false;
}
return true;
}
 function Fn_validation(uid)
{
var uid_len = uid.value.length;
var regex_pat_alpspace = /^[a-zA-Z\s-]+$/;
if(regex_pat_alpspace.test(uid.value)==true)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("Category Name should not be empty ");
uid.focus();
return false;
}
else if(regex_pat_alpspace.test(uid.value)==false)
    {
       alert("Name Should allow Alphabets,Space and (-) Only");
       return false;
    }
return true;
}
function Cn_Validation(uzip,mx)
{
var uid_len = uzip.value.length;
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers) && uid_len<=mx)
{
return true;
}
else if (uid_len == 0)
{
alert('Number of Sessions Should Not be Empty');
uzip.focus();
return false;
}
else if ((uzip.value.match(numbers)) && (uid_len>mx))
{
alert("Sessions Length Should be <= "+mx+"");
uzip.focus();
return false;
}

else if(uzip.value.match(numbers)!=0)
    {
alert('Sessions must have numeric characters only');
uzip.focus();
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
       <FORM name=xyz action="AddCourse.jsp" method="post">
  
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            
                <h2 class="text-center form-signin-heading">Adding a New Course</h2>
                <br/>
                <h3>Enter Course Name : </h3><input style="border-bottom-left-radius: 0px; border-bottom-right-radius: 0px;" type="text" name="course_name" class="form-control" placeholder="username" required autofocus>
                <h3>Category </h3> <input style="border-top-left-radius: 0px; border-top-right-radius: 0px;"  type="password" name="category" class="form-control" placeholder="Password" required>
                <h3>Number Of Sessions</h3> <input style="border-top-left-radius: 0px; border-top-right-radius: 0px;"  type="password" name="sessions" class="form-control" placeholder="Password" required>
                <br/>
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="REGISTER">


        </div>
                <div class="col-lg-4"></div>
    </div>
    
</FORM>  
      
     
          
             
<br><a href=AdminMenu.jsp>Go To Menu </a>
           <%
        }
        else if(method.equals("POST"))
     {
          String coursename = request.getParameter("course_name");
          String sessions = request.getParameter("sessions");
          String category = request.getParameter("category");
	 try
  	{ 
		 ResultSet rs=Db.Select("select  max(substring(course_id,2,1)) + 1 from courses "); 
		 rs.next();
                                       String cd=rs.getString(1);
                                       if(cd==null)
                                           cd="1";
		 String cid = "c" +cd;
		 PreparedStatement ps = con.prepareStatement("insert into courses values(?,?,?,?) ");
		 ps.setString( 1, cid);
	                    ps.setString( 2, coursename);
	  	 ps.setString( 3, category);
 		 ps.setString( 4, sessions);
	 	 ps.executeUpdate();
	 	 ps.close();	
		 rs.close();
	                    
%>                 
    	<center><font color=blue><h2>Course Added Successfully</h2><br>
            <h1><font color=red class="text-info">The Course Id Generated was :</font><%=cid%> </h1>
	<br><br><b>Make Sure You Provide Session Beak Up's and Data so that students can make use of Your valuable course</b></font>
        <br><br>
        <a href="AdminMenu.jsp">Go To Menu </a>
<%
                 }catch(Exception e){     e.printStackTrace();           }       
           }	
%>
</body></html>