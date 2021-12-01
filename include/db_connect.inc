<%
dim connection,connectionString
connectionString="provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("db\data.mdb")
'connectionString="provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & server.mappath("db\data.mdb")
set connection=server.createobject("ADODB.connection")
connection.open connectionString
%>
