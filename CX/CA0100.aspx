<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CA0100.aspx.cs" Inherits="Portal.CX.CA0100" %>

<%@ Register Src="~/Models/uiMsg.ascx" TagPrefix="uc1" TagName="uiMsg" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--#include file="Models/AllLoad.html"-->
    <title>O'PLAY管理系統</title>
    <link href="css/ext.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:uiMsg runat="server" ID="uiMsg" />
        <div id="dvtit" class="dvtit">
            <span>使用者ID者：</span><input type="text" size="11" maxlength="10" autocomplete="off" /><select id="usrid"><option value="99">全部</option>
            </select><input type="button" value="查 詢" id="btnselect" />
            <br />
            <input type="button" value="新增使用者" id="btnins" /><input type="button" value="異動使用者資料" id="btnupd" />
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
            <table id="tblist">
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
            /*部門*/
            $.getJSONo({
                isdebug: true,
                target: [$("#deptid")],
                url: '<%=ResolveUrl("~/Ajax/axDept.ashx") %>',
                success: function (d) {
                    var s = $("#deptid").setdls();
                    if (!$.isEmptyObject(d)) { for (var i in d) { s.append($("<option>", { value: d[i].DeptID }).text(d[i].DeptID + "-" + d[i].DeptName)); } }
                }
            })
            /*使用者列表*/
            $("#usrid").change(function () { });
            /*使用者*/
            $.getJSON('<%=ResolveUrl("~/Ajax/axUserList.ashx") %>', function (d) {
                var s = $("#usrid").setdls();
                if (!$.isEmptyObject(d)) { for (var i in d) { s.append($("<option>", { value: d[i].使用者ID }).text(d[i].部門別 + "-" + d[i].姓名)); } }
            });
            /*新增使用者*/
            $("#btnins").click(function () { $("#dvins").show(); $("#dvtit").hide(); });
            /*異動使用者資料*/
            $("#btnupd").click(function () {
                $("#btnins").click();
            });
            /*取消*/
            $("#btnreset").click(function () { $("#dvins").hide(); $("#dvtit").show() });
            /*要放到ajax所有設定共用，主要處理error*/
            //$(document).ajaxComplete(function (event, request, settings) {
            //    $(document.body).append(request.responseText);
            //});
        });
    </script>
</body>
</html>
