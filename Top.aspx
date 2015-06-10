<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="Portal.Top" EnableViewState="False" EnableViewStateMac="True" %>

<%@ Register Src="~/Models/JsLoad.ascx" TagPrefix="uc1" TagName="JsLoad" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <uc1:JsLoad runat="server" ID="JsLoad" />
    <link href="<%=ResolveUrl("~/css/top.css") %>" rel="stylesheet" type="text/css" />
</head>
<body style="background: url('<%=ResolveUrl("~/images/topbg.gif") %>') repeat-x;">
    <form id="frm" name="frm" runat="server" target="_parent" action="PortalLogin.aspx">
        <div class="topleft">
            <img alt="O'PLAY管理系統" src="<%=ResolveUrl("~/images/logo.png") %>" />
        </div>
        <ul id="nav" class="nav">
        </ul>
        <div class="topright">
            <ul>
                <li>
                    <div class="user">
                        <span><%=username %> </span>
                        <i>您好</i>
                    </div>
                </li>
                <li><a id="btnlogout" href="javascript:nv();">登出</a></li>
            </ul>
        </div>
        <input type="hidden" id="hidsubmit" name="hidsubmit" />
        <div id="dvprog" style="display: none;">
            <%=ProgID %>
        </div>
    </form>
    <form id="frms" name="frms" target="rightFrame" action="/">
    </form>
    <script type="text/javascript">
        $(window).load(function () {
            /*產生列表*/
            var s = $.trim($("#dvprog").text());
            if (s != "") {
                try {
                    s = $.parseJSON(s);
                    var nav = $("#nav");
                    for (var i in s) {
                        var o = s[i];
                        nav.append($("<li/>").append($("<a/>", { href: "javascript:nv();", id: o.ProgID, name: o.url })
                            .html("<h2>" + o.ProgName + "</h2>")
                            .click(function () {
                                var t = $(this);
                                $("#frms").prop("action", t[0].name).submit();
                                if (!t.hasClass("selected")) {
                                    nav.find("a").removeClass();
                                    t.addClass("selected");
                                    $("#hidsubmit").val(t[0].id);
                                    $("#frm").prop("target", "leftFrame").prop("action", "Left.aspx").submit();
                                }
                            })));
                    }
                    $("#R00000").click();
                } catch (e) { }
            }
            /*登出*/
            $("#btnlogout").click(function () { $("#frm").prop("target", "_parent").prop("action", "PortalLogin.aspx").submit(); });
        });
    </script>
</body>
</html>
