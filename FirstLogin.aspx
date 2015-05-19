﻿<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="FirstLogin.aspx.cs" Inherits="Portal.FirstLogin" %>

<%@ Register Src="~/Models/uiMsg.ascx" TagPrefix="uc1" TagName="uiMsg" %>
<%@ Register Src="~/Models/uiECode.ascx" TagPrefix="uc1" TagName="uiECode" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/FirstLogin.css" rel="stylesheet" type="text/css">
    <title>歡迎登入O'PLAY後台管理系统</title>
    <!--#include file="/Models/AllLoad.html"-->
</head>
<body>
    <div class="topAll">
        <div class="topleft">
            <img alt="歡迎登入O'PLAY後台管理系统" src="images/logo.png"><br>
        </div>
    </div>
    <div class="place">
        <span class="place1">位置:</span>
        <span class="place2">首次登入變更密碼</span>
    </div>
    <div class="container">
        <br>
        <br>
        <form method="post" id="frm" runat="server">
            <uc1:uiECode runat="server" ID="uiECode" />
            <uc1:uiMsg runat="server" ID="uiMsg" />
            <asp:HiddenField ID="hidcflag" runat="server" />
            <table class="tablelist">
                <tr>
                    <td width="30%">使用者代號</td>
                    <td id="tduid">
                        <asp:Literal ID="lauid" runat="server"></asp:Literal></td>
                </tr>
                <tr>
                    <td width="30%">舊密碼</td>
                    <td>
                        <input name="opw" id="opw" type="password" class="scinput" maxlength="10" autocomplete="off" /></td>
                </tr>
                <tr>
                    <td width="30%">新密碼</td>
                    <td>
                        <input name="npw" id="npw" type="password" class="scinput" maxlength="10" autocomplete="off" /></td>
                </tr>
                <tr>
                    <td width="30%">確認密碼</td>
                    <td>
                        <input name="epw" id="epw" type="password" class="scinput" maxlength="10" autocomplete="off" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="tipbtn">
                            <input name="" type="submit" id="btnsubmit" class="css_btn_class" value="確 定" />&nbsp;<input name="" type="reset" class="css_btn_class" value="重 設" />
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script type="text/javascript">
        $(window).load(function () {
            document.getElementById("opw").focus();
            /*確 定*/
            $("#btnsubmit").click(function () {
                if ($.checkpwd({
                    opwd: document.getElementById("opw").value,
                    pwd: document.getElementById("npw").value,
                    spwd: document.getElementById("epw").value,
                    uid: $("#tduid").text()
                })) { $(this).working(); return true; }
                return false;
            }).enter();
            /*修改成功後*/
            if ($("#<%=hidcflag.ClientID %>").val() == "0") {
                $("#divmsg").pop({
                    "html": uiMsg,
                    afertclose: function () { document.location.href = "<%=ResolveUrl("~/PortalLogin.aspx") %>"; }
                });
            }
        });
    </script>
</body>
</html>