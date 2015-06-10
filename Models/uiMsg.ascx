<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uiMsg.ascx.cs" Inherits="Portal.Models.uiMsg" EnableViewState="False" %>
<div id="divmsg" style="display: none;"></div>
<asp:HiddenField ID="hidmsg" runat="server" />
<script type="text/javascript">
    var uiMsg = "";
    $(window).load(function () {
        /*提醒*/
        uiMsg = $.trim($("#<%=this.hidmsg.ClientID %>").val());
	    if (uiMsg != "" && <%=Enable.ToString().ToLower() %>) { $("#divmsg").pop({ "html": uiMsg }); }
	});
</script>
