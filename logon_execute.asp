<!-- #INCLUDE FILE="include\db_connect.inc" -->

<%
session("logon")=false
session("manager")=false

dim people,sqlString

sqlString="SELECT * FROM people WHERE ID='" &  request.form("id") & "'"

set people=server.createobject("ADODB.recordset")
people.open sqlString,connection

if not people.eof then
'user found, compare password
if request.form("pass") = people("PASS") then
session("logon")=true
if people("MANAGER") then
session("manager")=true
end if
server.transfer("home.asp")
end if
end if

people.close
set people=nothing
%>

<!-- #INCLUDE FILE="include\db_disconnect.inc" -->
<%
server.transfer("default.asp")
%>