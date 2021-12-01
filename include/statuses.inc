<%
dim statuses,sqlStringStatuses
sqlStringStatuses="SELECT * FROM STATUSES ORDER BY STATUS_CODE"
set statuses=server.createobject("ADODB.recordset")
statuses.open sqlStringStatuses,connection
do until statuses.eof
if statuses("STATUS_CODE")=selected_status then
%>
<OPTION VALUE="<%=statuses("STATUS_CODE")%>" SELECTED><%=statuses("STATUS_DESCRIPTION")%></OPTION>
<%
else
%>
<OPTION VALUE="<%=statuses("STATUS_CODE")%>"><%=statuses("STATUS_DESCRIPTION")%></OPTION>
<%
end if
statuses.movenext
loop
statuses.close
set statuses=nothing
%>