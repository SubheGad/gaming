/* name_script.js */

function nameTestLogon()
{
var errorMsg=document.getElementById("errorMsg2");
var Pass=document.getElementById("pass");
var email=document.getElementById("id");
var chck=0;

//check if the emaill was entered
if(email.value.length<1)
{
errorMsg.value="Please enter your Email";return false;
}

//checks if the email is right
for(var i=0;i<30;i++)
{
if(email.value.substr(i,1)=="@" )
{
chck=1;
}
if(email.value.substr(i,1)=="." && chck==1)
{
chck=2;
}

}
if(chck<2)
{
errorMsg.value="Wrong Email";return false;
}




//checks if the password was entered
if(Pass.value.length<1)
{
errorMsg.value="Please enter your Password";return false;
}





return true;
}






function nameTestInput(last_name)
{
var chck=0;
var errorMsg=document.getElementById("errorMsg");

//Check Email
var id=document.getElementById("id");
if(id.value.length<1)
{
errorMsg.value="Email must be entered";return false;
}
for(var i=0;i<30;i++)
{
if(id.value.substr(i,1)=="@" )
{
chck=1;
}
if(id.value.substr(i,1)=="." && chck==1)
{
chck=2;
}

}
if(chck<2)
{
errorMsg.value="Wrong Email";return false;
}



//Check Full Name

var firstName=document.getElementById("first_name");
var space=0;

if(firstName.value<1){errorMsg.value="Full name must be entered";return false;}

for(var i=0;i<30;i++)
{
if(firstName.value.substr(i,1)==" ")
{ 
if(firstName.value.substr(i+1,1)<="z"&&firstName.value.substr(i+1,1)>='a')
{space=space+1;}
else if (firstName.value.substr(i+1,1)<="Z"&&firstName.value.substr(i+1,1)>='A')
{space=space+1;}
}
}
if(space<1){ errorMsg.value="Last name must be entered";return false;}






//Check Username
var username=document.getElementById("last_name");
var chk=0;

if(username.value.length<6)
{
errorMsg.value="Username must be 6 letters at least";return false;
}




/*
-----------------------------------------------------------------------------------------------------------------------------+
///// trying to check if a username is already taken, but by the looks of it I need to use JSON do it...                     |
                                                                                                                             |
var connection = new people("ADODB.Connection") ;                                                                            |
                                                                                                                             |
var connectionstring="Data Source=<server>;Initial Catalog=<catalog>;User ID=<user>;Password=<password>;Provider=SQLOLEDB";  |
                                                                                                                             |
connection.Open(connectionstring);                                                                                           |
var rs = new people("ADODB.Recordset");                                                                                      |
                                                                                                                             |
people.Open("SELECT * FROM table", people);                                                                                  |
people.MoveFirst                                                                                                             |
while(!people.eof)                                                                                                           |              
{	                                                                                                                         |
   if(ID.fields(1)==username.value)                                                                                          |
   {                                                                                                                         |
	 errorMsg.value="hahahahaha";return fals                                                                                 |
   }                                                                                                                         |         
   people.movenext;                                                                                                          |
}                                                                                                                            | 
                                                                                                                             |
rs.close;                                                                                                                    | 
connection.close;                                                                                                            |
-------------------------------------------------                                                                            |
for(var i=0;i<30;i++)                                                                                                        |
{                                                                                                                            |
if(username.value.substr(i,1)== name.value.substr(i,1))                                                                      |
{                                                                                                                            |
chk=chk+1;                                                                                                                   | 
}                                                                                                                            | 
}                                                                                                                            |
                                                                                                                             |
if(chk==username.value.length)                                                                                               |
{                                                                                                                            |
errorMsg.value="Username already taken";return false;                                                                        |
}                                                                                                                            |
                                                                                                                             |                                        
-----------------------------------------------------------------------------------------------------------------------------+
*/





//Check Date
var day=document.getElementById("day");
var month=document.getElementById("month");
var year=document.getElementById("year");
if((month.value==4 || month.value==6 || month.value==9 || month.value==11) && day.value>30)
{
errorMsg.value="Invalid Date";return false;
}
if(month.value==2 && year.value%4==0 && day.value>29)
{
errorMsg.value="Invalid Date";return false;
}
if(month.value==2 && year.value%4!=0 && day.value>28)
{
errorMsg.value="Invalid Date";return false;
}






//Check Password
var pass=document.getElementById("pass");
var pass2=document.getElementById("pass2");

var cap=0;
var sml=0;
var num=0;
var i;


//checks if the password is less than 6 letters
if(pass.value.length<6)
{
errorMsg.value="Password must be at lest 6 characters long";return false;
}	

//checks if the password contains a small letter, a capital letter and a number
for(i=0;i<30;i++)
{
if(pass.value.substr(i,1)<="Z" &&  pass.value.substr(i,1)>="A")
{
cap=cap+1;
}
else if(pass.value.substr(i,1)<="z" &&  pass.value.substr(i,1)>="a")
{
sml=sml+1;
}
else if(pass.value.substr(i,1)>='0' && pass.value.substr(i,1)<='9')
{
num=num+1;	
}
}

if (sml==0 || cap==0 || num==0)
{	
errorMsg.value="Password must contain a small letter, a capital letter and a number";return false;	
}


//checks if the confirm password field is empty
if(pass2.value.length<1){
errorMsg.value="Please confirm your password";return false;	
}

//checks if the passwords match
for(var i=0;i<30;i++)
{
if(pass.value.substr(i,1)!=pass2.value.substr(i,1))
{	
errorMsg.value="Passwords don't match";return false;	
}
}
	

//Clear Error Message
errorMsg.value="";
return true;
}





//if an error occurres
function error()
{
	alert("an error has occurred, please try refreshing the page O.- " );
}




