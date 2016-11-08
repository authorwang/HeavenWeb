<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dying.aspx.cs" Inherits="Dying" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table class="tableSacrificeTitleTotalStyle">
        <tr>
            <td class="tableSacrificeTitleStartStyle"></td>
            <td class="tableSacrificeTitleTitleStyle">濒危物种</td>
            <td class="tableSacrificeTitleMidStyle"></td>
            <td class="tableSacrificeTitleItemStyle">
              <asp:LinkButton ID="LinkButton5" runat="server">爬行动物</asp:LinkButton>
                |<asp:LinkButton ID="LinkButton6" runat="server">哺乳动物</asp:LinkButton>
                |<asp:LinkButton ID="LinkButton7" runat="server">两栖动物</asp:LinkButton>
                |<asp:LinkButton ID="LinkButton8" runat="server">无脊椎动物</asp:LinkButton>
            </td>
        </tr>
    </table>
        <div class="divSacAndLoginStyle">
         <table class="tableSacrificePictureTotalStyle">
        <tr>
            <td class="tableSacrificeTitleTitleStyle">&nbsp;</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/creatures/other/藏羚羊.jpg" />
                <br />
                藏羚羊</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/creatures/other/大熊猫.jpg" />
                <br />
                大熊猫</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/creatures/other/菲律宾鳄.jpg" />
                <br />
                菲律宾鳄</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/creatures/other/黑脚貂.jpg" />
                <br />
                黑脚貂</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/creatures/other/恒河鲨.jpg" />
                <br />
                恒河鲨</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/images/creatures/other/红狼.jpg" />
                <br />
                红狼</td>
            <td class="auto-style5">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/images/creatures/other/加利福尼亚秃鹰.jpg" />
                <br />
                加利福尼亚秃鹰</td>
        </tr>
        <tr>
            <td class="tableSacrificeTitleStartStyle">&nbsp;</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/images/creatures/other/美国鳗鱼.jpg" />
                <br />
                美国鳗鱼</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image11" runat="server" ImageUrl="~/images/creatures/other/山地大猩猩.jpg" />
                <br />
                山地大猩猩</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/images/creatures/other/苏门答腊犀牛.jpg" />
                <br />
                苏门答腊犀牛</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image12" runat="server" ImageUrl="~/images/creatures/other/苏门答腊猩猩.jpg" />
                <br />
                苏门答腊猩猩</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image13" runat="server" ImageUrl="~/images/creatures/other/太平洋蓝鳍金枪鱼.jpg" />
                <br />
                太平洋蓝鳍金枪鱼</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image14" runat="server" ImageUrl="~/images/creatures/other/西伯利亚虎.jpg" />
                <br />
                西伯利亚虎</td>
            <td class="auto-style5">
                <asp:Image ID="Image15" runat="server" ImageUrl="~/images/creatures/other/西部灰鲸.jpg" />
                <br />
                西部灰鲸</td>
        </tr>
    </table>
</asp:Content>

