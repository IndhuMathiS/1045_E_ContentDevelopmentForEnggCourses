

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
        <FORM action="KnowledgeSkillCheck.jsp" method=post>
        <table border="0">
           <font color="#A52A2A" size="6" > <label>Please Complete this Test First.....</label></font>
           <br><br><font color="green" size="4" > <label>Knowledge Skills:</label></font>
                    <ul>
                <li>
                    <b>Are u Willing to Practice all Examples in our Website?</b>
                    <br />
                    <input type="radio" name="q9" value="A" />
Yes.                    <br />
                    <input type="radio" name="q9" value="B" />
No.                      <input type="hidden" name="qid9" value="9" />
                    <br/><br/>
                </li>
                <li>
                    <b> How many Hours u going to spend on Internet daily?</b>
                    <br />
                    <input type="radio" name="q10" value="A" />

Less Than 2 hours.                   <br />
                    <input type="radio" name="q10" value="B" />
More Than 2 Hours.                   <br />
<input type="radio" name="q10" value="C" />
 24 Hours.                   <br />
                    <input type="radio" name="q10" value="D" />
as often as required.                    <input type="hidden" name="qid10" value="10" />
                    <br/><br/>
                </li>
                <li>
                    <b>What is your Favorite website on Internet?</b>

                    <br />
                    <input type="radio" name="q11" value="A" />
Google.                 <br />
                    <input type="radio" name="q11" value="B" />
Yahoo.                   <br />
                    <input type="radio" name="q11" value="C" />
Other.                    <input type="hidden" name="qid11" value="11" />
                    <br/><br/>
                </li>

                <li>
                    <b> Does U have Accounts in all mailing Systems?</b>
                    <br />
                    <input type="radio" name="q12" value="A" />
Yes.                    <br />
                    <input type="radio" name="q12" value="B" />
No.                   <br />
                
                   <input type="hidden" name="qid12" value="12" />
                    <br/><br/>
                </li>
              <li>
                    <b> How many Mail id's u are having?</b>
                    <br />
                    <input type="radio" name="q13" value="A" />
Less Than or equal to 2.                   <br />
                    <input type="radio" name="q13" value="B" />
More Than 2.                  <br />
                
                   <input type="hidden" name="qid13" value="13" />
                    <br/><br/>
                </li>
                 <li>
                    <b> How u going to learn for exams? </b>
                    <br />
                    <input type="radio" name="q14" value="A" />
Theoretical.                   <br />
                    <input type="radio" name="q14" value="B" />
Practical.                  <br />
                 <input type="radio" name="q14" value="C" />
Internet browsing.                
                   <input type="hidden" name="qid14" value="14" />
                    <br/><br/>
                </li>
                 <li>
                    <b> If any new website launched do u like to share with your friends? </b>
                    <br />
                    <input type="radio" name="q15" value="A" />
Yes.                   <br />
                    <input type="radio" name="q15" value="B" />
No.                 
                                
                   <input type="hidden" name="qid15" value="15" />
                    <br/><br/>
                </li>
            </ul>
        <br><br>
        <center> <input type="submit" name="sub" Value="Submit">  <input type="reset" name="reset" Value="Reset">
          </center>       
      
        </form></body>
</html>

