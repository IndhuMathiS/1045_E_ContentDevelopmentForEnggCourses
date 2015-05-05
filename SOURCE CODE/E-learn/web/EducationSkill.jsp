

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <FORM action="EducationSkillCheck.jsp" method=post>
        <table border="0">
           <font color="#A52A2A" size="6" > <label>Please Complete this Test First.....</label></font>
           <br><br><font color="green" size="4" > <label>Education Skills:</label></font>
                    <ul>
                <li>
                    <b>Can U able to follow the lectures on the Language in Your College?</b>
                    <br />
                    <input type="radio" name="q5" value="A" />
Little Bit.                    <br />
                    <input type="radio" name="q5" value="B" />
Average.                    <br />

                    <input type="radio" name="q5" value="C" />
Good.                    <input type="hidden" name="qid5" value="5" />
                    <br/><br/>
                </li>
                <li>
                    <b>Are U attending the Classes regularly in College?</b>
                    <br />
                    <input type="radio" name="q6" value="A" />

Yes,Regularly.                   <br />
                    <input type="radio" name="q6" value="B" />
No,I Take Leave Per Month.                    <br />
                    <input type="radio" name="q6" value="C" />
as often as required.                    <input type="hidden" name="qid6" value="6" />
                    <br/><br/>
                </li>
                <li>
                    <b>Do u Write Class notes while class is going?</b>

                    <br />
                    <input type="radio" name="q7" value="A" />
 Never Always.                 <br />
                    <input type="radio" name="q7" value="B" />
Always.                   <br />
                    <input type="radio" name="q7" value="C" />
as often as required.                    <input type="hidden" name="qid7" value="7" />
                    <br/><br/>
                </li>

                <li>
                    <b>Do u prepare Notes for Exams?</b>
                    <br />
                    <input type="radio" name="q8" value="A" />
Yes.                    <br />
                    <input type="radio" name="q8" value="B" />
No.                   <br />
                
                   <input type="hidden" name="qid8" value="8" />
                    <br/><br/>
                </li>
              
            </ul>
        <br><br>
        <center> <input type="submit" name="sub" Value="Submit">  <input type="reset" name="reset" Value="Reset">
          </center>       
      
        </form></body>
</html>

