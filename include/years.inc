<%
dim years,sqlStringYears
sqlStringYears="SELECT * FROM YEARS ORDER BY YEAR"
set years=server.createobject("ADODB.recordset")
years.open sqlStringYears,connection
do until years.eof
if cint(years("YEAR"))=selected_year then
%>
<OPTION VALUE="<%=years("YEAR")%>" SELECTED><%=years("YEAR")%></OPTION>
<%
else
%>
<OPTION VALUE="<%=years("YEAR")%>"><%=years("YEAR")%></OPTION>
<%
end if
years.movenext
loop
years.close
set years=nothing
%>