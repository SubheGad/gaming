<html>
<head> 
 <!-- #INCLUDE FILE="include\db_connect.inc" -->
 <!-- #INCLUDE FILE="include\logon.inc" -->
<BR>
<title>update Add</title>
<link rel="stylesheet" type="text/css" href="css/name_style.css">
<script src="script/name_script.js"></script>

<style>	body{	
          	background-repeat: no-repeat;
            background-size: cover;
			background-position: center;
			background-size: cover;
			margin: 0px;
			height: 100%;
			background-color: #c0c0c0;
}

.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 100%;
  height: auto;
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
  color: green;
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
</head>


<body>
<table>
<tr>
<form action="name_update_execute.asp" method="post" onsubmit="return nameTestInput()">
<td>
Email:
</td>
<td>
<input type="text" maxlength="30" name="id" id="id" value="<%=request.form("ID")%>" >
</td>
</tr>
<tr>
<td>
Full name:
</td>
<td>
<input type="text" maxlength="30" name="first_name" id="first_name" value="<%=request.form("FIRST_NAME")%>" >
</td>
</tr>

<tr>
<td>
Username:
</td>
<td>
<input type="text" maxlength="30" name="last_name" id="last_name" value="<%=request.form("LAST_NAME")%>" >
</td>
</tr>
<% selected_country= request.form("cob") %>
<TR>
 <TD>COB:</TD>
 <TD>
 <SELECT NAME="cob" >
 <!-- #INCLUDE FILE="include\countries.inc" -->
 </select>
 </TD>
 </TR>
 <%
 selected_day=day(request.form("dob"))
 selected_month=month(request.form("dob"))
 selected_year=year(request.form("dob"))
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
<SELECT NAME="Status" value='<%=request.form("status")%>'>>
 <!-- #INCLUDE FILE="include\statuses.inc" -->
</select>
</td>
</Tr>
<!-- ********************************************************** -->

<TR>
<TD>Password:</TD>
<TD><INPUT TYPE="password" MAXLENGTH="20" NAME="pass" ID="pass" value="<%=request.form("pass")%>"></TD>
</tr>
<TR>
<TD>Confirm Password:</TD>
<TD><INPUT TYPE="password" MAXLENGTH="20" NAME="pass2" ID="pass2" value="<%=request.form("pass")%>"></TD>
</tr>

<!-- ********************************************************** -->

<TR>
<TD>Manager:</TD>
<% 
if session ("manager") then
%>
<TD> NO <INPUT TYPE="radio" NAME="manager" value="false" checked> YES <input type="radio" name="manager" value="true"></TD>
<% end if %>


<% 
if not session ("manager") then
%>
<TD> NO <INPUT TYPE="radio" NAME="manager" value="false" checked> 
<% end if %>

</tr>
<!-- ********************************************************** -->
<tr>
<td >
<input type="submit" value="update Info">
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




</body>
</html>








