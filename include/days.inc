<%
dim days,sqlStringDays
sqlStringDays="SELECT * FROM DAYS ORDER BY DAY"
set days=server.createobject("ADODB.recordset")
days.open sqlStringDays,connection
do until days.eof
if cint(days("DAY"))=selected_day then
%>
<OPTION VALUE="<%=days("DAY")%>" SELECTED><%=days("DAY")%></OPTION>
<%
else
%>
<OPTION VALUE="<%=days("DAY")%>"><%=days("DAY")%></OPTION>
<%
end if
days.movenext
loop
days.close
set days=nothing
%>