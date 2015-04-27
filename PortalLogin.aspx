﻿<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="PortalLogin.aspx.cs" Inherits="Portal.PortalLogin1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/login.css" rel="stylesheet" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <!--#include file="PreLoad.inc"-->
    <script type="text/javascript" src="Scripts/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.11.4.min.js"></script>
    <script type="text/javascript" src="Scripts/jsExt.js"></script>
    <link href="Theme/redmond/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
</head>
<body>
    <div id="divmsg" style="display: none;"></div>
    <div class="main">
        <div id="c1" class="c1"></div>
        <div class="f">
            <div class="top">
                <span>歡迎登入O'PLAY後台管理系统</span>
            </div>
            <div class="mid">
                <div></div>
            </div>
            <div class="box">
                <div>
                    <form action="PortalLogin.aspx" method="post" id="frm" runat="server">
                        <input type="text" class="us" name="uid" id="uid" value="" /><br />
                        <input type="password" class="pw" name="pwd" id="pwd" value="" /><br />
                        <asp:HiddenField ID="hidecode" runat="server" />
                        <asp:HiddenField ID="hidmsg" runat="server" />
                        <input id="hidfunc" name="hidfunc" type="hidden" />
                        <table>
                            <tr>
                                <td>
                                    <input type="submit" name="btnsubmit" id="btnsubmit" class="btn" value="登入" />
                                </td>
                                <td><a name="a" id="a">忘記密碼？</a></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div class="don">
                ⓒ版權所有  2015   <a href="http://www.o-play.com.tw/">http://www.o-play.com.tw/</a>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(window).load(function () {
            document.getElementById("uid").focus();
            /*忘記密碼*/
            $("#a").click(function () {
                var uid = $.trim($("#uid").val());
                if (uid == "") { return false; }
                $("#hidfunc").val("a");
                $("#frm").submit();
            });
            /*登入*/
            $("#btnsubmit").click(function () {
                var uid = $.trim($("#uid").val());
                var pwd = $.trim($("#pwd").val());
                if (uid == "" || pwd == "") { return false; }
                $("#hidfunc").val("s");
                $("#frm").submit();
            });
            /*提醒*/
            var msg = $.trim($("#hidmsg").val());
            if (msg != "") { $("#divmsg").pop({ "html": msg }); }
        });
    </script>
</body>
</html>
