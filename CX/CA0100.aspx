<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CA0100.aspx.cs" Inherits="Portal.CX.CA0100" %>

<%@ Register Src="~/Models/JsLoad.ascx" TagPrefix="uc1" TagName="JsLoad" %>
<%@ Register Src="~/Models/uiMsg.ascx" TagPrefix="uc1" TagName="uiMsg" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>歡迎登入O'PLAY後台管理系统</title>
    <uc1:JsLoad runat="server" ID="JsLoad" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:uiMsg runat="server" ID="uiMsg" />
        <div id="dvtit" class="dvtit">
            <span>使用者ID者：</span><input id="txtfind" type="text" size="11" maxlength="10" autocomplete="off" /><select id="usrid"></select><input type="button" value="查 詢" id="btnselect" />
            <br />
            <input type="button" value="新增使用者" id="btnins" />
        </div>
        <div id="dvins" style="display: none;">
            <table>
                <tr>
                    <td>使用者ID者：</td>
                    <td>
                        <input type="text" name="uid" id="uid" size="10" maxlength="10" autocomplete="off" /></td>
                    <td>姓名：</td>
                    <td>
                        <input type="text" name="name" id="name" size="20" maxlength="20" autocomplete="off" /></td>
                    <td>部門別：</td>
                    <td>
                        <select id="deptid"></select></td>
                </tr>
                <tr>
                    <td>密碼：</td>
                    <td>
                        <input type="password" name="pwd" id="pwd" size="10" maxlength="10" autocomplete="off" /></td>
                    <td>Email：</td>
                    <td>
                        <input type="text" name="email" id="email" size="50" maxlength="50" autocomplete="off" /></td>
                    <td>啟用：</td>
                    <td>
                        <select id="opencode">
                            <option value="1" selected="selected">正常</option>
                            <option value="0">停用</option>
                            <option value="2">暫停</option>
                        </select></td>
                </tr>
                <tr>
                    <td colspan="6">
                        <input type="button" value="確 定" id="btnsubmit" />
                        <input type="reset" value="取 消" id="btnreset" /></td>
                </tr>
            </table>
        </div>
        <div>
            <table id="tblist" style="display: none;">
                <tr>
                    <th>序號</th>
                    <th>使用者ID</th>
                    <th>姓名</th>
                    <th>部門別</th>
                    <th>Email</th>
                    <th>啟用</th>
                    <th>密碼變更時間</th>
                    <th>錯誤次數</th>
                    <th>登入次數</th>
                    <th>最後登入時間</th>
                    <th>代理人ID</th>
                    <th>代理啟用碼</th>
                </tr>
            </table>
        </div>
    </form>
    <script type="text/javascript">
        $(window).load(function () {
            function user() {
                /*使用者大表*/
                $.getJSONo({
                    target: [$("#tblist")],
                    url: '<%=ResolveUrl("~/Ajax/axCA0100Read.ashx") %>',
                    success: function (d) {
                        var tb = $("#tblist");
                        for (var i in d) {
                            var tr = $("<tr>");
                            for (var g in d[i]) {
                                var td = $("<td>").append(d[i][g]);
                                if ("使用者ID" == g) {
                                    td.css("cursor", "pointer")
                                        .prop("id", d[i].使用者ID)
                                        .click(function () {
                                            var val = $.trim($(this).text());
                                            val = $.grep(d, function (n, i) { return n.使用者ID == val; });
                                            if (val.length) {
                                                var o = val[0];
                                                $("#uid").val(o.使用者ID);
                                                $("#name").val(o.姓名);
                                                $("#email").val(o.Email);
                                                $("#deptid option").removeProp("selected")
                                                    .filter(function (i) { return $.inArray(o.部門別, $.trim($(this).text()).split("-")) > 0; })
                                                    .prop("selected", true);
                                                $("#opencode option").removeProp("selected")
                                                    .filter(function (i) { return o.啓用 == $.trim($(this).text()); })
                                                    .prop("selected", true);
                                                $("#btnins").click();
                                            }
                                        });
                                }
                                tr.append(td);
                            }
                            tb.append(tr);
                        }
                    }
                });
                /*使用者小表*/
                $.getJSONo({
                    target: [$("#usrid")],
                    url: '<%=ResolveUrl("~/Ajax/axXDUserList.ashx") %>',
                    success: function (d) {
                        var s = $("#usrid").setdls();
                        if (!$.isEmptyObject(d)) {
                            for (var i in d) { s.append($("<option>", { value: d[i].使用者ID }).text(d[i].部門別 + "-" + d[i].姓名)); }
                            s.change(function () { $("#txtfind").val($(this).find("option:selected").val()); });
                        }
                    }
                });
            }
            user();
            /*部門*/
            $.getJSONo({
                target: [$("#deptid")],
                url: '<%=ResolveUrl("~/Ajax/axDept.ashx") %>',
                success: function (d) {
                    var s = $("#deptid").setdls();
                    if (!$.isEmptyObject(d)) { for (var i in d) { s.append($("<option>", { value: d[i].DeptID }).text(d[i].DeptID + "-" + d[i].DeptName)); } }
                }
            });
            /*新增使用者*/
            $("#btnins").click(function () { $("#dvins").show(); $("#dvtit").hide(); });
            /*查詢*/
            $("#btnselect").click(function () { $("#" + $.trim($("#txtfind").val())).click(); });
            /*取消*/
            $("#btnreset").click(function () { $("#dvins").hide(); $("#dvtit").show() });
            /*確定*/
            $("#btnsubmit").click(function () {
            });
        });
    </script>
</body>
</html>
