<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PortalLogin.aspx.cs" Inherits="Portal.PortalLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="noindex" />
    <link href="css/login.css" rel="stylesheet" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <script type="text/javascript" src="Scripts/jquery-1.11.2.min.js"></script>
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
                    <input class="us" name="usr" id="usr" /><br />
                    <input class="pw" name="pwd" id="pwd" /><br />
                </form>
                <table>
                    <tr>
                        <td>
                            <div class="btn" id="submit">登入</div>
                        </td>
                        <td><a>忘記密碼？</a></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="don">
            ⓒ版權所有  2015   <a href="http://www.o-play.com.tw/">http://www.o-play.com.tw/</a>
        </div>
    </div>
    <script type="text/javascript">
        window.onload = function () {
            document.getElementById("usr").focus();
            document.getElementById("submit").onclick = function () { document.getElementById("frm").submit(); }
        }
    </script>
</body>
</html>
