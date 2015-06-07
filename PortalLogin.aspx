<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="PortalLogin.aspx.cs" Inherits="Portal.PortalLogin1" EnableViewStateMac="True" %>

<%@ Register Src="~/Models/uiMsg.ascx" TagPrefix="uc1" TagName="uiMsg" %>
<%@ Register Src="~/Models/uiECode.ascx" TagPrefix="uc1" TagName="uiECode" %>
<%@ Register Src="~/Models/JsLoad.ascx" TagPrefix="uc1" TagName="JsLoad" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <uc1:JsLoad runat="server" id="JsLoad" />
    <link href="<%=ResolveUrl("~/css/login.css") %>"" rel="stylesheet" type="text/css" />
    <title>歡迎登入O'PLAY後台管理系统</title>    
</head>
<body>
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
                    <form method="post" id="frm" runat="server" target="_self">
                        <input type="text" class="us" name="uid" id="uid" autocomplete="off" maxlength="10" value="<%=hiduid %>" /><br />
                        <input type="password" class="pw" name="pwd" id="pwd" maxlength="10" value="" /><br />
                        <input id="hidfunc" name="hidfunc" type="hidden" />
                        <uc1:uiMsg runat="server" ID="uiMsg" />
                        <uc1:uiECode runat="server" ID="uiECode" />
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
                if (uid == "") {
                    document.getElementById("uid").focus();
                    $("#divmsg").pop({ "html": "帳號不可空白!" });
                    return false;
                }
                $("#hidfunc").val("a");
                $(this).working();
                $("#frm").submit();
            });
            /*登入*/
            $("#btnsubmit").click(function () {
                var uid = $.trim($("#uid").val());
                var pwd = $.trim($("#pwd").val());
                if (uid == "" || pwd == "") { $("#divmsg").pop({ "html": "帳號或密碼不可空白!" }); return false; }
                $("#hidfunc").val("s");
                $(this).working();
                $("#frm").submit();
            }).enter();
        });
    </script>
</body>
</html>
