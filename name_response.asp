<html>
<body>

<!-- #INCLUDE FILE="include\db_connect.inc" -->

<%
dim people,sqlString

sqlString="SELECT * FROM people WHERE ID='" &  request.form("id") & "'"

'response.write(sqlString)
'response.end

set people=server.createobject("ADODB.recordset")

people.open sqlString,connection

if not people.eof then
response.write("Hello " & people("FIRST_NAME"))
else
response.write("Not Found")
end if

people.close
set people=nothing
%>

<!-- #INCLUDE FILE="include\db_disconnect.inc" -->

</body>
</html>