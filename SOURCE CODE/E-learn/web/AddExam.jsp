<%@page import="Connection.DB"%>
<%@page import="java.io.*"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
  <html><body>
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
else
    return true;
}

function fun3()
{
var c = document.f3.qid;
var d= document.f3.qd ;
var e = document.f3.op1;
var f = document.f3.op2;
var g = document.f3.op3;
var h = document.f3.op4;
var ans = document.f3.ans;

if(Cn_Validation(c))
{
if(D_validation(d))
{
if(D1_validation(e))
{
if(D2_validation(f))
        {
 if(D3_validation(g))
     {
if(D4_validation(h))
    {
if(D5_validation(ans))
return true;
}
}
}
}
}
}
return false; 
}
function Cn_Validation(uzip)
{
var uid_len = uzip.value.length;
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers))
{
return true;
}
else if (uid_len == 0)
{
alert('Question Id Should Not be Empty');
uzip.focus();
return false;
}
else if(uzip.value.match(numbers)!=0)
    {
alert('Question Id must have numeric characters only');
uzip.focus();
return false;
}
}
function D_validation(uid)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Question Description should not be empty ");
uid.focus();
return false;
}
return true;
}
function D1_validation(uid)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Option 1 Should not be Empty ");
uid.focus();
return false;
}
return true;
}
function D2_validation(uid)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Option 2 Should not be Empty ");
uid.focus();
return false;
}
return true;
}
function D3_validation(uid)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Option 3 Should not be Empty ");
uid.focus();
return false;
}
return true;
}
function D4_validation(uid)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Option 4 Should not be Empty ");
uid.focus();
return false;
}
return true;
}
function D5_validation(uid,mx)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Answer Should not be Empty ");
uid.focus();
return false;
}
return true;
}


</script>
<%
 DB Db=new DB();
String method=request.getMethod();
      if(method.equals("GET"))
     {
      
%>
           <font color=blue><h2><center>Add Exam For an Existing  Course</center> </h2><form name="f2" method=POST action="AddExam.jsp"  onSubmit="return fun2()"><br><br><table align='center'><tr><td><b>Choose Course ID:<select name='CID'>
                                   <option value="Select">Select</option>

<%
try{
	
	ResultSet rs = Db.Select("select course_id from courses order by 1");
	while( rs.next())
                 {
                   String ci=rs.getString(1);
%>
	<option><%=ci%> <br>
<%
                 }
	rs.close();

%>
	</select></b></td></tr><tr><td><input type=submit  value='--Add--'></td><tr></table></form></font>
        <br><a href=AdminMenu.jsp>Go To Menu </a>
<%
	}catch(Exception e){
		e.printStackTrace();
	}	        
        }
       else if(method.equals("POST"))
       {
	 String cid=request.getParameter("CID");
%>
      <font color=blue><h2><center>Examination Paper For the Course Id : <%=cid%></center></h2><br><br><form name="f3" action="InsertExam.jsp" method=POST onSubmit="return fun3()"><table border=1 align='center'>
<%
        try{
%>
  <tr><td>Course Id </td><td><input type=text name=cid readonly value=<%=cid%>></td></tr>
  <tr><td>Question  Id </td><td><input type=text name=qid></td></tr>
  <tr><td>Question Description </td><td><input type=text name=qd size=50></td></tr>
  <tr><td>Option 1 </td><td><input type=text name=op1></td></tr>
  <tr><td>Option 2 </td><td><input type=text name=op2></td></tr>
  <tr><td>Option 3 </td><td><input type=text name=op3></td></tr>
  <tr><td>Option 4 </td><td><input type=text name=op4></td></tr>
  <tr><td>Answer </td><td><input type=text name=ans></td></tr>
  <tr><td></td><td><input type=submit value='Insert'>&nbsp;&nbsp;<input type=reset value='Clear'></td></tr></form></font></body></html>
<br><a href=AdminMenu.jsp>Go To Menu </a>
<%
          
           }catch(Exception e){
	e.printStackTrace();
          }
   }
%>