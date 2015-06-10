<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RA0100.aspx.cs" Inherits="Portal.RX.RA0100" EnableViewState="False" EnableViewStateMac="True" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>O'PLAY管理系統</title>
    <link href="<%=ResolveUrl("~/css/top.css") %>" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="frm" runat="server">
        <div class="place">
            <span>位置：</span>
            <ul class="placeul">
                <li>旅客基本資料</li>
            </ul>
        </div>

        <div class="formbody">
            <ul class="seachform">
                <li>
                    <label>搜尋項目：</label>
                    <label>身份證字號</label>
                    <input name="input" type="text" class="scinput" />
                </li>

                <li>
                    <label>&nbsp;</label><input name="" type="button" class="scbtn" value="查詢" /></li>
            </ul>

            <table class="tablelist">
                <thead>
                    <tr>
                        <th width="5%">編號</th>
                        <th width="9%">身份證字號</th>
                        <th width="8%">姓名</th>
                        <th width="13%">英文姓名</th>
                        <th width="5%">性別</th>
                        <th width="17%">生日</th>
                        <th width="9%">其他證號</th>
                        <th width="16%">來源</th>
                        <th width="11%">業務員</th>
                        <th width="7%">往來</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#" class="tablelink">1</a></td>
                        <td>A120567890</td>
                        <td>李小德</td>
                        <td>LEE SH DER</td>
                        <td>男 </td>
                        <td>1966/9/25</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>廖燕華</td>
                        <td>正常</td>
                    </tr>
                    <tr>
                        <td><a href="#" class="tablelink">2</a></td>
                        <td>Z220312345</td>
                        <td>許小雲</td>
                        <td>HSU SH YUN </td>
                        <td>女</td>
                        <td>1966/9/25</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>廖燕華</td>
                        <td>正常</td>
                    </tr>
                    <tr>
                        <td><a href="#" class="tablelink">3</a></td>
                        <td>A123456789</td>
                        <td>李小禧</td>
                        <td>user</td>
                        <td>女</td>
                        <td>1966/9/25</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>廖燕華</td>
                        <td>正常</td>
                    </tr>
                </tbody>
            </table>
            <ul class="seachform">
                <li>
                    <label>a.基本資料欄位：</label>
                </li>
            </ul>
            <table class="tablelist">
                <thead>
                    <tr>
                        <th>姓名</th>
                        <th>英文姓名</th>
                        <th>性別</th>
                        <th>生日</th>
                        <th>身分證ID</th>
                        <th>護照No</th>
                        <th>發照地</th>
                        <th>發照日</th>
                        <th>效期</th>
                        <th>簽證記錄</th>
                        <th>建檔日期</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>李小德</td>
                        <td>LEE SH DER</td>
                        <td>男 </td>
                        <td>1966/9/25</td>
                        <td>A120567890</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>1966/9/25</td>
                        <td>1966/9/25</td>
                        <td>&nbsp;</td>
                        <td>1966/9/25</td>
                    </tr>
                </tbody>
            </table>
            <ul class="seachform">
                <li>
                    <label>b.滑雪團特殊欄位：</label>
                </li>
            </ul>
            <table class="tablelist">
                <thead>
                    <tr>
                        <th width="17%">身高</th>
                        <th width="15%">體重</th>
                        <th width="12%">腳板尺寸</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>170</td>
                        <td>55</td>
                        <td>25</td>
                    </tr>
                </tbody>
            </table>
            <ul class="seachform">
                <li>
                    <label>c．其他資料：</label>
                </li>
            </ul>
            <table class="tablelist">
                <thead>
                    <tr>
                        <th colspan="2">中英文通訊地址</th>
                        <th colspan="2">聯絡電話</th>
                        <th width="20%">email</th>
                        <th width="11%">航空會員資料</th>
                        <th width="13%">備註</th>
                        <th width="14%">往來記錄(訂單)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="4%">中</td>
                        <td width="20%">新北市中和區景平路11之11號17樓</td>
                        <td width="7%">電話</td>
                        <td width="11%">02-3051-3357</td>
                        <td rowspan="2">ooo198406025ooo@yahoo.com.tw</td>
                        <td rowspan="2">&nbsp;</td>
                        <td rowspan="2">&nbsp;</td>
                        <td rowspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>英</td>
                        <td>&nbsp;</td>
                        <td>手機</td>
                        <td>0955-858-969</td>
                    </tr>
                </tbody>
            </table>
            <p>&nbsp;</p>
            <table class="tablelist">
                <thead>
                    <tr>
                        <th>訂單號</th>
                        <th>交易日期</th>
                        <th>類別</th>
                        <th>摘要</th>
                        <th>確認</th>
                        <th>帳單號</th>
                        <th>代轉序</th>
                        <th>應收</th>
                        <th>應付</th>
                        <th>利潤</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="#" class="tablelink">2351</a><a href="#" class="tablelink"></a></td>
                        <td>2015/3/4</td>
                        <td>成本</td>
                        <td>李小德</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>123</td>
                        <td>123</td>
                        <td>123</td>
                    </tr>
                </tbody>
            </table>
            <p>&nbsp;</p>

        </div>

    </form>
</body>
</html>
