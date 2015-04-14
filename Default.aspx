<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        table td {
            padding: 10px 0px;
        }
    </style>
</head>
<body style="background-color: #1c77ac; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">
    <div id="mainBody">
        <div id="cloud1" class="cloud"></div>
        <div id="cloud2" class="cloud"></div>
    </div>
    <div class="logintop">
        <span>歡迎登入O'PLAY後台管理系统</span>
        <ul>
        </ul>
    </div>
    <div class="loginbody">
        <span class="systemlogo"></span>
        <div class="loginbox">
            <form id="form1" runat="server">
                <table>
                    <tr>
                        <td style="width:280px;height:70px;"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:TextBox ID="uid" runat="server" CssClass="loginuser"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:TextBox ID="pwd" runat="server" CssClass="loginpwd"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align:center;">
                            <asp:Button ID="btnsumbit" runat="server" Text="登入" CssClass="loginbtn" /><label style="padding-left:40px;"><a href="#">忘記密碼?</a></label></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                <asp:HiddenField ID="hidecode" runat="server" />
            </form>
        </div>
    </div>
    <div class="loginbm">版權所有  2015  <a href="http://www.o-play.com.tw/">http://www.o-play.com.tw/</a> </div>
</body>
</html>
