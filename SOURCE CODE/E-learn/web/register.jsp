<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>E-Learning</title>

    <!-- Bootstrap core CSS -->
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
    
    
<SCRIPT language=JavaScript1.2>
function winopen1() {		
	msg1=open("/_mem_bin/FormsLogin.asp?/log.asp","WINDOWNAME","toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,width=275,height=400");
}

function winopenBMA() {		
	msg1=open("/_mem_bin/bma_formslogin.asp?/log.asp","WINDOWNAME","toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no,width=275,height=450");
}

// -->
</SCRIPT>
<LINK href="Images/Common.css"  rel=stylesheet>

</STYLE>

      </script>
<script>
      function formValidation()
{
var fn = document.addit.first_name;
var ln = document.addit.last_name;
var job = document.addit.job;
var wa = document.addit.addr;
var city = document.addit.city;
var state = document.addit.state;
var zip = document.addit.zip;
var ph = document.addit.phone;
var email = document.addit.email;
var us = document.addit.user;
var pwd = document.addit.password;

if(fn_validation(fn))
{
if(ln_validation(ln))
{
if(Job_validation(job))
{
if(Wa_validation(wa))
{ 
if(City_validation(city))
{
if(State_validation(state))
{
if(Pp_validation(zip,6))
{
if(Ph_validation(ph,10))
{
if(Email_validation(email))
{
 if(Un_validation(us,5))
     {
if(Pwd_validation(pwd,5))
{
  return true;  
} 
}
}
}
}
}
}
}
}
}
}
return false;
}

function fn_validation(uid)
{
var uid_len = uid.value.length;
var regex = /^[a-zA-Z ]*$/;
if(regex.test(uid.value)==true && uid_len>0)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("First Name should not be empty ");
uid.focus();
return false;
}

else if(regex.test(uid.value)==false)
    {
       alert("First Name Should allow Alphabets only");
       return false;
    }
return true;
}
function ln_validation(uid)
{
var uid_len = uid.value.length;
var regex = /^[a-zA-Z ]*$/;
if(regex.test(uid.value)==true && uid_len>0)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("Last Name should not be empty ");
uid.focus();
return false;
}

else if(regex.test(uid.value)==false)
    {
       alert("Last Name allow Alphabets only");
       return false;
    }
return true;
}
function Job_validation(uid)
{
if(uid.value == "Select")
{
alert("Please Choose the Title");
uid.focus();
return false;
    }
return true;
}
function Wa_validation(uid)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Working Address Should not be Empty ");
uid.focus();
return false;
}
return true;
}
function City_validation(uid)
{
var uid_len = uid.value.length;
var regex = /^[a-zA-Z ]*$/;
if(regex.test(uid.value)==true && uid_len>0)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("City should not be empty ");
uid.focus();
return false;
}

else if(regex.test(uid.value)==false)
    {
       alert("City Should allow Alphabets only");
       return false;
    }
return true;
}
function State_validation(uid)
{
if(uid.value == "Select")
{
alert("Please Choose Your State");
uid.focus();
return false;
    }
return true;
}
function Pp_validation(uzip,mx)
{
    var uid_len = uzip.value.length;
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers) && uid_len==mx)
{
return true;
}
else if (uid_len == 0)
{
alert('Zip Code Should Not be Empty');
uzip.focus();
return false;
}else if ((uzip.value.match(numbers)) && (uid_len<mx || uid_len>mx))
{
alert("Zip Code Length Should be "+mx+"");
uzip.focus();
return false;
}

else if(uzip.value.match(numbers)!=0)
    {
alert('Zip Code must have numeric characters only');
uzip.focus();
return false;
}
}
function Ph_validation(uzip,mx)
{
    var uid_len = uzip.value.length;
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers) && uid_len==mx)
{
return true;
}
else if (uid_len == 0)
{
alert('Work Phone Should Not be Empty');
uzip.focus();
return false;
}else if ((uzip.value.match(numbers)) && (uid_len<mx) ||(uid_len>mx) )
{
alert("Work Phone Length Should be "+mx+"");
uzip.focus();
return false;
}

else if(uzip.value.match(numbers)!=0)
    {
alert('Work Phone must have numeric characters only');
uzip.focus();
return false;
}
}
function Email_validation(uid)
{
var uid_len = uid.value.length;
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
if (uid_len == 0)
{
alert('Email Address Should Not be Empty');
uid.focus();
return false;
}
else if (reg.test(uid.value) == false) 
        {
            alert('Invalid Email Address.Email Address Should be Like This Example:Alice@PLC.com');
            return false;
        }
      
        return true;
}
function Un_validation(uid,mx)
{
var uid_len = uid.value.length;
var regex_pat_alpnum_spe = /^[A-Za-z0-9(!@#$%^&*.<>,_+-=:;?\/|\\)]+$/;
if(regex_pat_alpnum_spe.test(uid.value)==true && uid_len==mx)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("User Name should not be empty ");
uid.focus();
return false;
}
else if( regex_pat_alpnum_spe.test(uid.value)==true && uid_len < mx)
    {
alert("User Name length Should be >= "+mx+" ");
uid.focus();
return false; 
    }
else if(regex_pat_alpnum_spe.test(uid.value)==false)
    {
       alert("User Name should not allow Space");
       return false;
    }
return true;
}

function Pwd_validation(uid,mx)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Password should not be empty ");
uid.focus();
return false;
}
else if (uid_len > 0 && uid_len < mx)
{
alert("Password length should be >= "+mx);
uid.focus();
return false;
}
return true;
}





</script>

<META content="MSHTML 6.00.2600.0" name=GENERATOR></HEAD>
<BODY>
    
    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
        <div style="background-color: #009688; color: white; padding: 1px;" class="masthead">
            <h1 class="">&nbsp;<i class="fa fa-cloud-upload fa-3x"></i> &nbsp;<span style="font-size: 40px;">E-LEARNING</span></h1>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href ="home.jsp">HOME</a></li>
                    <li><a href ="login.jsp">LOGIN</a></li>
                    <li><a href ="register.jsp">REGISTER</a></li>
                    <li><a href ="Admin.jsp">ADMINISTRATION</a></li>
                    <li><a href ="http://www.google.co.in/">HELP</a></li>
                </ul>
            </div>
        </div>
    

      <div class="row">
          <div class="col-lg-4"></div>
          <div class="col-lg-4">
              
              <h2 class="text-center form-signin-heading">REGISTRATION FORM</h2>
              
              <FORM name=addit action="Registration.jsp" method=post onsubmit="return formValidation();">
          
                  <INPUT class="form-control" placeholder="First Name" maxLength=79 size=25 autofocus name=first_name><br/>
                <INPUT class="form-control" placeholder="Middle Name" maxLength=1 size=4 name=mid_name><br/>
                <INPUT class="form-control" maxLength=79 size=25 placeholder="Last Name" name=last_name><br/>
                <INPUT class="form-control" maxLength=5 size=4  placeholder="Suffix" name=suffix><br/>
                <INPUT class="form-control" maxLength=40 size=25 name=city  placeholder="City"><br/>
                <label>Country</label><br/>
                <SELECT class="form-control" size=1 name=state >
                    <OPTION value="Select" selected>Select</OPTION>
                    <OPTION value=AL>AL</OPTION>
                    <OPTION value=AK>AK</OPTION>
                    <OPTION 
              value=AR>AR</OPTION>
                    <OPTION value=AZ>AZ</OPTION>
                    <OPTION 
              value=CA>CA</OPTION>
                    <OPTION value=CO>CO</OPTION>
                    <OPTION 
              value=CT>CT</OPTION>
                    <OPTION value=DC>DC</OPTION>
                    <OPTION 
              value=DE>DE</OPTION>
                    <OPTION value=FL>FL</OPTION>
                    <OPTION 
              value=GA>GA</OPTION>
                    <OPTION value=GU>GU</OPTION>
                    <OPTION 
              value=HI>HI</OPTION>
                    <OPTION value=IA>IA</OPTION>
                    <OPTION 
              value=ID>ID</OPTION>
                    <OPTION value=IL>IL</OPTION>
                    <OPTION 
              value=IN>IN</OPTION>
                    <OPTION value=KS>KS</OPTION>
                    <OPTION 
              value=KY>KY</OPTION>
                    <OPTION value=LA>LA</OPTION>
                    <OPTION 
              value=MA>MA</OPTION>
                    <OPTION value=MD>MD</OPTION>
                    <OPTION 
              value=ME>ME</OPTION>
                    <OPTION value=MI>MI</OPTION>
                    <OPTION 
              value=MN>MN</OPTION>
                    <OPTION value=MO>MO</OPTION>
                    <OPTION 
              value=MS>MS</OPTION>
                    <OPTION value=MT>MT</OPTION>
                    <OPTION 
              value=NC>NC</OPTION>
                    <OPTION value=ND>ND</OPTION>
                    <OPTION 
              value=NE>NE</OPTION>
                    <OPTION value=NH>NH</OPTION>
                    <OPTION 
              value=NJ>NJ</OPTION>
                    <OPTION value=NM>NM</OPTION>
                    <OPTION 
              value=NV>NV</OPTION>
                    <OPTION value=NY>NY</OPTION>
                    <OPTION 
              value=OH>OH</OPTION>
                    <OPTION value=OK>OK</OPTION>
                    <OPTION 
              value=OR>OR</OPTION>
                    <OPTION value=PA>PA</OPTION>
                    <OPTION 
              value=PR>PR</OPTION>
                    <OPTION value=RI>RI</OPTION>
                    <OPTION 
              value=SC>SC</OPTION>
                    <OPTION value=SD>SD</OPTION>
                    <OPTION 
              value=TN>TN</OPTION>
                    <OPTION value=TX>TX</OPTION>
                    <OPTION 
              value=UT>UT</OPTION>
                    <OPTION value=VA>VA</OPTION>
                    <OPTION 
              value=VI>VI</OPTION>
                    <OPTION value=VT>VT</OPTION>
                    <OPTION 
              value=WA>WA</OPTION>
                    <OPTION value=WI>WI</OPTION>
                    <OPTION 
              value=WV>WV</OPTION>
                    <OPTION value=WY>WY</OPTION>
                    <OPTION 
              value=-->Other</OPTION>
                  </SELECT><br/>
                <INPUT placeholder="Zip code" class="form-control" maxLength=10 size=9 name=zip><br/>
                <INPUT class="form-control" placeholder="Country" maxLength=20 size=25 name=country><br/>
                <INPUT class="form-control" maxLength=79 size=25 placeholder="Email address" name=email><br/>
                <INPUT class="form-control" maxLength=79 size=25 name=webaddr placeholder="Website address"><br/>
                <INPUT class="form-control" maxLength=20 size=25 name=user placeholder="Username"><br/>
                <INPUT class="form-control" type=password maxLength=20 size=25 name=password placeholder="Password"> 
                 <br/> 
                <INPUT class="btn btn-lg btn-primary btn-block" id=button1 type=submit value=Submit name=button1>
                <INPUT type=hidden value=add name=instruction>
          </form>
              
          </div>
          <div class="col-lg-4"></div>
      </div>
      <br/>
      <br/>
      <footer class="footer" style="background-color: #009688; color: white; padding: 15px;">
          <p class="text-center">&copy; SaveethaCOE 2015</p>
      </footer>
    </div>
</BODY>
</HTML>
