<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Up.aspx.cs" Inherits="Portal.Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Image ID="Image1" runat="server" Height="214px" ImageUrl="~/test/test.PNG" Width="285px" />
        <br />
    </div>
    </form>
</body>
</html>
