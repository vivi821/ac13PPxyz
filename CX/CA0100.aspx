<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CA0100.aspx.cs" Inherits="Portal.CX.CA0100" %>

<%@ Register Src="~/Models/uiMsg.ascx" TagPrefix="uc1" TagName="uiMsg" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--#include file="/Models/AllLoad.html"-->
    <title>O'PLAY管理系統</title>
    <style type="text/css">
        div {
            width: 100%;
            white-space:nowrap;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:uiMsg runat="server" ID="uiMsg" />
        <div>
            
        </div>
    </form>
</body>
</html>
