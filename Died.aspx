<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Died.aspx.cs" Inherits="Died" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="tableSacrificeTitleTotalStyle">
        <tr>
            <td class="tableSacrificeTitleStartStyle"></td>
            <td class="tableSacrificeTitleTitleStyle">灭绝物种</td>
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
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/creatures/波斯黇鹿.jpg" />
                <br />
                波斯黇鹿</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/creatures/查塔姆吸蜜鸟.jpg" />
                <br />
                查塔姆吸蜜鸟</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/creatures/渡渡鸟.jpg" />
                <br />
                渡渡鸟</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/creatures/佛罗里达彩鹫.jpg" />
                <br />
                佛罗里达鹫</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/creatures/卡罗莱纳长尾鹦鹉.jpg" />
                <br />
                长尾鹦鹉</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/images/creatures/留尼汪椋鸟.jpg" />
                <br />
                留尼汪椋鸟</td>
            <td class="auto-style5">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/images/creatures/日本狼.jpg" />
                <br />
                日本狼</td>
        </tr>
        <tr>
            <td class="tableSacrificeTitleStartStyle">&nbsp;</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/images/creatures/圣多美腊嘴雀.jpg" />
                <br />
                圣多美腊嘴雀</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image11" runat="server" ImageUrl="~/images/creatures/所罗门冕鸽.jpg" />
                <br />
                所罗门冕鸽</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/images/creatures/夏威夷暗鸫.jpg" />
                <br />
                夏威夷暗鸫</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image12" runat="server" ImageUrl="~/images/creatures/夏威夷绿雀.jpg" />
                <br />
                夏威夷绿雀</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image13" runat="server" ImageUrl="~/images/creatures/叙利亚野驴.jpg" />
                <br />
                叙利亚野驴</td>
            <td class="tableSacrificeItemStyle">
                <asp:Image ID="Image14" runat="server" ImageUrl="~/images/creatures/亚洲猎豹.jpg" />
                <br />
                亚洲猎豹</td>
            <td class="auto-style5">
                <asp:Image ID="Image15" runat="server" ImageUrl="~/images/creatures/阿特拉斯棕熊.jpg" />
                <br />
                阿特拉斯棕熊</td>
        </tr>
    </table>
</asp:Content>

