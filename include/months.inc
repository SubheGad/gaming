<%
dim months,sqlStringMonths
sqlStringMonths="SELECT * FROM MONTHS ORDER BY MONTH"
set months=server.createobject("ADODB.recordset")
months.open sqlStringMonths,connection
do until months.eof
if cint(months("MONTH"))=selected_month then
%>
<OPTION VALUE="<%=months("MONTH")%>" SELECTED><%=months("MONTH")%></OPTION>
<%
else
%>
<OPTION VALUE="<%=months("MONTH")%>"><%=months("MONTH")%></OPTION>
<%
end if
months.movenext
loop
months.close
set months=nothing
%>