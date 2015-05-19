<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="Portal.Top" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/top.css" rel="stylesheet" />
    <title>O'PLAY管理系統</title>
</head>
<body style="background: url(images/topbg.gif) repeat-x;">
    <form id="frm" runat="server">
        <div class="topleft">
            <img alt="O'PLAY管理系統" src="images/logo.png" />
        </div>
        <ul class="nav">
            <li><a href="RX/RX0000.html" target="rightFrame" class="selected">
                <h2>旅客系統</h2>
            </a></li>
            <li><a href="CX/CX0000.html" target="rightFrame">
                <h2>管理系統</h2>
            </a></li>
        </ul>
        <div class="topright">
            <ul>
                <li>
                    <div class="user">
                        <span>王小明 </span>
                        <i>您好</i>
                    </div>
                </li>
                <li><a href="logout.html" target="_parent">登出</a></li>
            </ul>
        </div>
    </form>
</body>
</html>
