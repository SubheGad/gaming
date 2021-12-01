<!DOCTYPE html>

<HTML>
<!-- #INCLUDE FILE="include\menu.inc" -->
<!-- #INCLUDE FILE="include\logon.inc" -->

<BR>
<HEAD>
<TITLE>Name Delete</TITLE>
<LINK REL="stylesheet" TYPE="text/css" HREF="css/name_style.css">
<SCRIPT SRC="script/name_script.js"></SCRIPT>
</HEAD>

<BODY>

<FORM ACTION="name_delete_execute.asp" METHOD="post" ONSUBMIT="return nameTestInput(1)">

<TABLE>

<TR>

<TD>
Email:
</TD>

<TD>
<INPUT TYPE="text" MAXLENGTH="30" NAME="id" ID="id" value='<% request.form("id")%>' READONLY>
</TD>

</TR>

<TR>

<TD>
<INPUT TYPE="submit" VALUE="Delete Person">
</TD>
<TD>
<INPUT TYPE="text" CLASS="errorMsg" ID="errorMsg" VALUE="" READONLY>
</TD>

</TR>

</TABLE>

</FORM>

</BODY>

</HTML>