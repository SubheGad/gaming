<!-- #INCLUDE FILE="include\db_connect.inc" -->

<%
dim people,sqlString

sqlString="SELECT * FROM people WHERE ID='" &  request.form("id") & "'"

'response.write(sqlString)
'response.end

set people=server.createobject("ADODB.recordset")
people.open sqlString,connection,2,3

if not people.eof then

people("first_name").value=request.form("first_name")
people("last_name").value=request.form("last_name")
people("cob").value=request.form("cob")
people("dob").value=request.form("day") & "/" & request.form("month") & "/" & request.form("year")
people("status").value=request.form("status")
people("pass").value=request.form("pass")
people("manager").value=request.form("manager")
people.update

end if

people.close
set people=nothing
%>

<!-- #INCLUDE FILE="include\db_disconnect.inc" -->
<%
server.transfer("name_list.asp")
%>