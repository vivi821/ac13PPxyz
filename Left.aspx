<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Left.aspx.cs" Inherits="Portal.Left" EnableViewState="False" EnableViewStateMac="True" %>

<%@ Register Src="~/Models/JsLoad.ascx" TagPrefix="uc1" TagName="JsLoad" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <uc1:jsload runat="server" id="JsLoad" />
    <link href="<%=ResolveUrl("~/css/left.css") %>" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="frm" runat="server">
        <div id='cssmenu'>
            <ul id="nav">
                <li class='active'><a href='#'><span>功　能　列　表</span></a></li>
            </ul>
        </div>
        <div id="dvprog" style="display: none;">
            <%=SubProg %>
        </div>
    </form>
    <script type="text/javascript">
        $(window).load(function () {
            /*產生列表*/
            var s = $.trim($("#dvprog").text());
            if (s != "") {
                try {
                    s = $.parseJSON(s);
                    var nav = $("#nav"), sv = $.grep(s, function (n, i) { return n.PLevel == 1; });
                    for (var i in sv) {
                        var o = sv[i];
                        var t = $("<ul/>");
                        var dv = $.grep(s, function (n, i) { return n.PLevel == 2 && n.FatherID == o.SubID; });
                        for (var g in dv) {
                            var x = dv[g];
                            t.append($("<li/>").append($("<a/>", { href: x.url, target: "rightFrame" }).html("<span>" + x.ProgName + "</span>")));
                        }
                        nav.append($("<li/>", { "class": "has-sub" }).append($("<a/>", { href: "#" }).html("<span>" + o.ProgName + "</span>")).append(t));
                    }
                    $('#cssmenu > ul > li > a').click(function () {
                        $('#cssmenu li').removeClass('active');
                        $(this).closest('li').addClass('active');
                        var checkElement = $(this).next();
                        if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                            $(this).closest('li').removeClass('active');
                            checkElement.slideUp('normal');
                        }
                        if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                            $('#cssmenu ul ul:visible').slideUp('normal');
                            checkElement.slideDown('normal');
                        }
                        return ($(this).closest('li').find('ul').children().length == 0);
                    });
                } catch (e) { }
            }
        });
    </script>
</body>
</html>
