<html>
<head> 
 <!-- #INCLUDE FILE="include\db_connect.inc" -->

<BR>

<style>	body{	
          	background-repeat: no-repeat;
            background-size: cover;
			background-position: center;
			background-size: cover;
			margin: 0px;
			height: 100%;
			background-color: #c0c0c0;
			}
.errorMsg{
				background-color: #ff0000;
				border: none;
				color: #c0c0c0;
}				
			
			
</style>

<title>Name Add</title>
<link rel="stylesheet" type="text/css" href="css/name_style.css">
<script src="script/name_script.js"></script>

<body>
<table>
<tr>
<form action="name_add_execute.asp" method="post" onsubmit="return nameTestInput()" onerror="error()">

<!-- ********************************************************** -->
<td>
Email:
</td>
<td>
<input type="text" maxlength="30" name="id" id="id">
</td>
</tr>
<!-- ********************************************************** -->

<tr>
<td>
Full name:
</td>
<td>
<input type="text" maxlength="30" name="first_name" id="first_name">
</td>
</tr>
<!-- ********************************************************** -->

<tr>
<td>
Username:
</td>
<td>

<input type="text" maxlength="30" name="last_name" id="last_name">

</td>
</tr>
<!-- ********************************************************** -->
<% 
selected_country="" 
%>
<TR>
 <TD>COB:</TD>
 <TD>
 <SELECT NAME="cob">
 <!-- #INCLUDE FILE="include\countries.inc" -->
 </select>
 </TD>
 </TR>
 <!-- ********************************************************** -->
 <%
 selected_day=""
 selected_month=""
 selected_year=""
%>
<TR>
<TD>DOB:</TD>
<TD>
Day:
<select NAME="day" ID="day">
 <!-- #INCLUDE FILE="include\days.inc" -->
 </select>
Month:
<select NAME="month" ID="month">
 <!-- #INCLUDE FILE="include\months.inc" -->
 </select>
 Year:
<select NAME="year" ID="year">
 <!-- #INCLUDE FILE="include\years.inc" -->
 </select>
</td>
</tr>
<!-- ********************************************************** -->
<%
selected_status=""
%>
<TR>
<TD>Status:</TD>
<TD> 
<SELECT NAME="Status">
 <!-- #INCLUDE FILE="include\statuses.inc" -->
</select>
</td>
</Tr>
<!-- ********************************************************** -->
<TR>
<TD>Password:</TD>
<TD><INPUT TYPE="PASSWORD" MAXLENGTH="20" NAME="pass" ID="pass"></TD>
</tr>
<TR>
<TD>Confirm Password:</TD>
<TD><INPUT TYPE="PASSWORD" MAXLENGTH="20" NAME="pass2" ID="pass2"></TD>
</tr>
<!-- ********************************************************** -->
<TR>
<TD>Manager:</TD>
<%if session("manager") then%>
<TD> NO <INPUT TYPE="radio" NAME="manager" value="false" checked> YES <input type="radio" name="manager" value="true"></TD>
<%end if%>

<% 
if not session ("manager") then
%>
<TD> NO <INPUT TYPE="radio" NAME="manager" value="false" checked> 
<% end if %>
</tr>

<!-- ********************************************************** -->
<tr>
<td>
<input type="submit" value="Add User">
</td>


<td>
<input type="text" class="errorMsg" size="200" id="errorMsg" value="" readonly>
</td>
</tr>

<!-- <td>        </td>
<td>
<button onclick="goBack()">Go Back</button>
</td>


</form>
</table>

<script>
function goBack() {
  window.history.back();
}
</script> -->







</form>


</body>
</html>