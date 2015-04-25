<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstLogin.aspx.cs" Inherits="Portal.FirstLogin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="Scripts/jquery-1.11.2.min.js"></script>
    <link href="css/login.css" rel="stylesheet" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <!--#include file="PreLoad.inc"-->
</head>
<body>
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
                <form target="_self" action="PortalLogin.aspx" method="post" id="frm">
                    <input class="us" name="uid" id="uid" value="" /><br />
                    <input class="pw" name="pwd" id="pwd" value="" /><br />
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
</body>
</html>