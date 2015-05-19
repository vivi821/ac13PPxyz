<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Left.aspx.cs" Inherits="Portal.Left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>O'PLAY管理系統</title>
    <script type="text/javascript" src="Scripts/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../Scripts/jsCss.js"></script>
    <link href="css/left.css" rel="stylesheet" />
</head>
<body>
    <form id="frm" runat="server">
        <div id='cssmenu'>
            <ul>
                <li class='active'><a href='#'><span>功　能　列　表</span></a></li>
                <li class='has-sub'><a href='#'><span>客戶及供應商管理</span></a>
                    <ul>
                        <li><a href='#'><span>旅客資料管理</span></a></li>
                        <li><a href='#'><span>同業資料管理</span></a></li>
                        <li><a href='#'><span>機關行號客戶管理</span></a></li>
                        <li><a href='#'><span>航空公司資料管理</span></a></li>
                        <li><a href='#'><span>廠商管理</span></a></li>
                        <li><a href='#'><span>網路會員管理</span></a></li>
                        <li><a href='#'><span>通路類別檔</span></a></li>
                        <li class='last'><a href='#'><span>領隊&導遊管理</span></a></li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>旅遊資料管理</span></a>
                    <ul>
                        <li><a href='#'><span>洲別</span></a></li>
                        <li><a href='#'><span>國家</span></a></li>
                        <li><a href='#'><span>城市</span></a></li>
                        <li><a href='#'><span>飯店</span></a></li>
                        <li><a href='#'><span>圖庫管理</span></a></li>
                        <li class='last'><a href='#'><span>業務員替換處理</span></a></li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>訂單管理</span></a>
                    <ul>
                        <li><a href='#'><span>業務員訂單作業</span></a></li>
                        <li><a href='#'><span>OP人員訂單作業</span></a></li>
                        <li><a href='#'><span>請款單作業</span></a></li>
                        <li class='last'><a href='#'><span>業績報表列印</span></a></li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>商品管理</span></a>
                    <ul>
                        <li><a href='#'><span>產品線別管理</span></a></li>
                        <li><a href='#'><span>產品系列名稱管理</span></a></li>
                        <li><a href='#'><span>共用基本行程編輯</span></a></li>
                        <li><a href='#'><span>基本團型管理</span></a></li>
                        <li><a href='#'><span>開團作業</span></a></li>
                        <li><a href='#'><span>個團&銷售管理</span></a></li>
                        <li><a href='#'><span>其他旅遊商品</span></a></li>
                        <li><a href='#'><span>團體銷售控管</span></a></li>
                        <li><a href='#'><span>團體報表列印</span></a></li>
                        <li><a href='#'><span>團體分房表</span></a></li>
                        <li><a href='#'><span>旅客辦證記錄</span></a></li>
                        <li class='last'><a href='#'><span>ED卡/海關單</span></a></li>
                    </ul>
                </li>
                <li class='has-sub'><a href='#'><span>帳務管理</span></a>
                    <ul>
                        <li><a href='#'><span>收款明細表</span></a></li>
                        <li><a href='#'><span>付款明細表</span></a></li>
                        <li><a href='#'><span>代收轉付明細表</span></a></li>
                        <li><a href='#'><span>代收轉付設定</span></a></li>
                        <li><a href='#'><span>應收憑單</span></a></li>
                        <li><a href='#'><span>應付憑單</span></a></li>
                        <li><a href='#'><span>會計報表列印</span></a></li>
                        <li class='last'><a href='#'><span>帳款科目設定</span></a></li>
                    </ul>
                </li>
                <li class='last'><a href='#'><span>網站管理</span></a>
                    <ul>
                        <li class='last'><a href='#'><span>網站內容編輯</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
