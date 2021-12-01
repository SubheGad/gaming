<!DOCTYPE HTML>
<!-- #INCLUDE FILE="include\logon.inc" -->


<HTML>
<HEAD>


<style>

body{	
          	background-repeat: no-repeat;
            background-size: cover;
			background-position: center;
			background-size: cover;
			margin: 0px;
			height: 100%;
}

.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 100px;
  height: 200px;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 200%;
  opacity: 0;
  transition: .5s ease;
  background-color: #000000;
}

.container:hover .overlay {
  opacity: 0.5;
}

.text {
  color: red;
  font-size: 25px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
}
</style>


<TITLE>Name List</TITLE>
<LINK REL="stylesheet" TYPE="text/css" HREF="css/name_style.css">
<SCRIPT SRC="script/name_script2.js"></SCRIPT>
<BODY>
<!-- #INCLUDE FILE="include\db_connect.inc" -->
<BR>

<TABLE>
<TR>
<TD>
<%
if session("manager") then
%> 
<B>NEW PERSON</B><IMG CLASS="click" SRC="images/add_icon.gif" ONCLICK='document.location="name_add.asp";'>
<%end if%>
</TD>
</TR>
</TABLE>


<BR>
<%
dim people,sqlString
sqlString="SELECT * FROM (PEOPLE INNER JOIN COUNTRIES ON PEOPLE.COB=COUNTRIES.COUNTRY_CODE) INNER JOIN STATUSES ON PEOPLE.STATUS=STATUSEs.STATUS_CODE ORDER BY FIRST_NAME"
set people=server.createobject("ADODB.recordset")
people.open sqlString,connection
%>

<TABLE CLASS="list">

<TR>
<%
if session("manager") then
%> 
<TH CLASS="data">Email</TH>

<% end if %>
<TH CLASS="data">Full name</TH>
<TH CLASS="data">Username</TH>
<TH CLASS="data">COB</TH>
<TH CLASS="data">DOB</TH>
<TH CLASS="data">Status</TH>


<%
if session("manager") then
%> 

<TH CLASS="data">Manager</TH>
<TH CLASS="data">Password</TH>
<TH CLASS="data">&nbsp;</TH>
<TH CLASS="data">&nbsp;</TH>
<% end if %>
</TR>

<%
do until people.eof
%>
<TR>
<%
if session("manager") then
%> 
<TD CLASS="data"><%=people("ID")%></TD>
<% end if %>
<TD CLASS="data"><%=people("FIRST_NAME")%></TD>
<TD CLASS="data"><%=people("LAST_NAME")%></TD>
<TD CLASS="data"><Img CLASS="click" src="images/flags/<%=people("COUNTRY_NAME")%>.png" ONERROR="this.src='images/flags/United Nations.png'">&nbsp; <%=people("COUNTRY_NAME")%></TD>
<TD CLASS="data"><%=people("DOB")%></TD>
<TD CLASS="data"><%=people("STATUS_DESCRIPTION")%></TD>



<%
if session("manager") then
%> 
<TD CLASS="data"><%=people("MANAGER")%></TD>
<% if people("MANAGER")=false then %>
<TD CLASS="data"><%=people("PASS")%></TD>
<%end if%>

<TD CLASS="data">

<FORM ACTION="name_update.asp" METHOD="post" ID="update_form<%=people("ID")%>">
<INPUT TYPE="hidden" NAME="id" VALUE="<%=people("ID")%>">
<INPUT TYPE="hidden" NAME="first_name" VALUE="<%=people("FIRST_NAME")%>">
<INPUT TYPE="hidden" NAME="last_name" VALUE="<%=people("LAST_NAME")%>">
<INPUT TYPE="hidden" NAME="cob" VALUE="<%=people("COB")%>">
<INPUT TYPE="hidden" NAME="dob" VALUE="<%=people("DOB")%>">
<INPUT TYPE="hidden" NAME="status" VALUE="<%=people("STATUS")%>">
<INPUT TYPE="hidden" NAME="pass" VALUE="<%=people("PASS")%>">
<INPUT TYPE="hidden" NAME="manager" VALUE="<%=people("MANAGER")%>">
</FORM>


<% if people("MANAGER")=false then %>
<IMG CLASS="click" SRC="images/edit_icon.gif" ONCLICK='document.getElementById("update_form<%=people("ID")%>").submit();'>
</TD>
<%end if%>

<TD CLASS="data">

<% if people("MANAGER")=false then %>
<FORM ACTION="name_delete_execute.asp" METHOD="post" ID="delete_form<%=people("ID")%>">
<INPUT TYPE="hidden" NAME="id" VALUE="<%=people("ID")%>">

</FORM>

<IMG CLASS="click" SRC="images/delete_icon.gif" ONCLICK='if(window.confirm("Are You Sure?")){document.getElementById("delete_form<%=people("ID")%>").submit()};'>
<%end if%>
</TD>
</TR>
<% end if %>

<%
people.movenext
loop
%>
</TABLE>
</form>

<BR>
<%
people.close
set people=nothing
%>
<!-- #INCLUDE FILE="include\db_disconnect.inc" -->




<table class="gg2">
<td> 

<div class="container"> 


  <img src="home.jpg" class="image" id="image" style="width:250px; height:250x;" TARGET="Games">
<a href="index.html" >
  <div class="overlay">
    <div class="text">Home</div>
  </div>
  </td>
</div>
</table>

</a>



</BODY>
</HTML>














