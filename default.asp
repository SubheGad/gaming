<!DOCTYPE html>

<HTML>
<HEAD>
<BR>
<TITLE>default</title>

<style>	body{	
          	background-repeat: no-repeat;
            background-size: cover;
			background-position: center;
			background-size: cover;
			margin: 0px;
			height: 100%;

			background-color: #c0c0c0;
</style>


<link rel="stylesheet" type="text/css" href="css/name_style.css" >
<script src="script/name_script.js"></script>
</head>


<body>
<br>
<table>

<TR>
<form action="logon_execute.asp" method="post" onsubmit="return nameTestLogon();">


<TD>Email:</TD><TD> <input type="text" maxlength="30" name="id" id="id"></td>
</tr>


<tr>
<td>Password: </td><tD><Input type="password" maxlength="30" name="pass" id="pass"></td>
</tr>



<TR>
<TD>
<INPUT Type="submit" value="logon">
</td>
<TD>
<input type="text" class="errorMsg" size="200" id="errorMsg2" value="" readonly>
</td>
</tr> 

</table>
</form>



<form action="name_add.asp">
<table>
<tr><td><button>New user</button></td></tr>
</table>
</form>

</body>
</html>




