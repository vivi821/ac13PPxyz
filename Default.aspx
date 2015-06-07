<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Portal.Default" EnableViewState="False" EnableViewStateMac="true"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--#include file="/Models/PreLoad.html"-->
    <title>O'PLAY管理系統</title>
</head>
<frameset rows="50,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="Top.aspx" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
    <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
        <frame src="Left.aspx" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
        <frame src="RX/R00000.aspx" name="rightFrame" id="rightFrame" title="rightFrame" />
    </frameset>
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>
