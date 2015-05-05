
<%@page import="Connection.DB"%>
<%@page import="java.io.PrintWriter"%>
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
var c = document.f2.CID.value;

if(c=="Select")
{
alert("Please Choose Course ID");
document.f2.CID.focus();
return false;
}

}
function fun3(button,ele)
{
    //alert(ele)
var c = document.f3.session_NO;
var d = document.f3.topic;
//alert(button.value);
if(button.value=="Add")
    {
if(Cn_Validation(c,5))
{
if(C_validation(d,ele))
{

return true;
}
}
}
else if(button.value=="Delete")
    {
        var chks = document.getElementsByName('C');
var checkCount = 0;
for (var i = 0; i < chks.length; i++)
{
if (chks[i].checked)
{
checkCount++;
}
}
if (checkCount < 1)
{
alert("Please select at least one Checkbox.");
return false;
}
else
    {
return true;
var http = new getXMLHttpRequestObject();
   var url = "ModifyCourse.jsp";
http.open("POST", url, true);
     
    }
    return false;
}
 return false;
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
function C_validation(uid,el)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Course Name should not be empty ");
uid.focus();
return false;
}
else
    {

var http = new getXMLHttpRequestObject();
   var url = "ModifyCourse.jsp";
     url +="?CID="+el;

http.open("POST", url, true);
 http.send(null);

return true;
    }
}





</script>
<%
 DB Db=new DB();
 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();

 
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
      
<font color=blue><h2><center>Modify Course Details</center>
</h2><form name="f2" method=POST class="form-control-static"><br><br><table align='center' class="table-bordered"><tr><td>
                <b>Choose Course ID:<select name='CID'> <option value="Select">Select</option>
                        
<%
try{
	ResultSet rs = Db.Select("select course_id from courses order by 1");
	while( rs.next())
                   {
                      String cid=rs.getString(1);
 %>
	<option><%=cid%> </option><br> 
<%
                    }
	rs.close();
	
%>
	
                    </select></b></td></tr><tr><td><input type=submit  value='--GO--'></td><tr>
    </table></form></font> <br><a href="AdminMenu.jsp">Go To Menu </a> </div>
    
    
<%
	}catch(Exception e){
		e.printStackTrace();
	}	        
        }
        
         else if(method.equals("POST"))
          {
 String cid="";
             if (session.getAttribute("CID") == null)
             {
                cid=request.getParameter("CID");
                session.setAttribute("CID" , request.getParameter("CID"));
                 System.out.println("1cid"+cid);
             }
             else
             {
           cid = (String)session.getAttribute("CID");  System.out.println("1cid"+cid);
             session.setAttribute("CID" , cid);
             }
             
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
        </div> </div>
<font color=blue><h2><center>Add Course Details in the Course <%=cid%></center></h2><br><br>
<form name="f3" method="Post" class="form-control-static">
    <table class="table-bordered" align='center'><tr><th>Delete/Add</th><th>Session Number</th>
            <th>Topic</th></tr>

        <%
        boolean st = false;
        try{
              String add=request.getParameter("ADD");
             
              Connection con=Db.con;
              if(  add!= null && ! add.equals("") && add.compareToIgnoreCase("Add")==0){  
               cid = (String)session.getAttribute("CID"); 
                  
                   System.out.println("cid"+cid);
                  ResultSet rs=Db.Select("select sessions from courses where course_id='"+cid+"'");
              if(rs.next())
              {
                  System.out.println("coming");
              if(rs.getInt(1)<(Integer.parseInt(request.getParameter("session_NO"))))
              {
                  st=false;
                 out.println("<center><font color=red>Sorry! Session Number is Exceed</font></center><br>");
              }
              else
                st=true;
              }
              rs.close();
              if(st==true)
              {
                  
               PreparedStatement ps = con.prepareStatement("insert into course_details values( ?,?,?) ");
	ps.setString(1 ,cid);
	ps.setString(2 ,request.getParameter("session_NO"));
	ps.setString(3 ,request.getParameter("topic") );
	ps.executeUpdate();
	ps.close();
           }
              }
          if(  add!= null && ! add.equals("") && add.compareToIgnoreCase("Delete")==0){
          	  String[] values = request.getParameterValues( "C");
             PreparedStatement  ps =con.prepareStatement("delete from course_details where course_id=? and session_no=?");        
                for(int i=0;i<values.length;i++){
		System.out.println("deleting " + values[i]);
                    ps.setString( 1 , cid);
	   ps.setString(2 , values[i]);
	 ps.executeUpdate();
	}
	ps.close();
         }
            con.close();            
	
	 ResultSet rs = Db.Select("select * from course_details where course_id='" + cid + "' order by session_no" );
            while( rs.next()){
cid=rs.getString(1);
String sess=rs.getString(2);
String topic=rs.getString(3);
out.println("<tr><td><input type=checkbox name=C value=" + sess + "></td><td>" + sess + "</td><td><a href='CourseContent.jsp?cid="+cid+"&cc="+sess+"','CourseContent','toolbar=0,scrollbars=1,width=500,height=500'); return false;>" + topic + "</a></td></tr>");
              }

	rs.close();
             
%>
             <tr><td><input type=submit id="ADD" value="Add" name=ADD onclick="return fun3(this,'<%=cid%>')"></td><td><input type=text name=session_NO></td><td><input type=text name=topic></td></tr><tr><td cellspan=3>
              <input type=submit id="ADD" value="Delete" name=ADD onclick="return fun3(this)"></td></tr></table></form></font>
              <br>
              <br>
                <a href="AdminMenu.jsp">Go To Menu</a></h3>
     
<%
        session.setAttribute("CID" , cid);  cid = (String)session.getAttribute("CID"); 
                  
                   System.out.println("lacid"+cid);
        
           }catch(Exception e){
	e.printStackTrace();
          }
   }
%>
</body></html>