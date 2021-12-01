<!-- #INCLUDE FILE="include\logon.inc" -->
<!-- #INCLUDE FILE="include\db_connect.inc" -->

<%
'count manager
dim people,sqlString
sqlString="SELECT COUNT(*) AS MANAGERS FROM PEOPLE WHERE MANAGER"
set people=server.createobject("ADODB.recordset")
people.open sqlString,connection
managers=people("managers")
people.close

sqlString="SELECT * FROM people WHERE ID='" & request.form("id") & "'"
people.open sqlString,connection,2,3

if not people.eof then

if not(managers=1 and people("manager")) then
people.delete
people.update

end if
end if

people.close
set people=nothing
%>

<!-- #INCLUDE FILE="include\db_disconnect.inc" -->

<%
server.transfer("name_list.asp")
%>