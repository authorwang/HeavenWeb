<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="Comment"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
     <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />

     <table class="tableSacrificeTitleTotalStyle">
        <tr>
            <td class="tableSacrificeTitleStartStyle"></td>
            <td class="tableSacrificeTitleTitleStyle">评论详情</td>
            <td class="tableSacrificeTitleMidStyle"></td>
            <td class="tableSacrificeTitleItemStyle">
                作者：<asp:Label ID="lbCommentAuthor" runat="server" Text="佚名"></asp:Label>
            </td>
        </tr>
    </table>

         <table>
             <tr>
                 <td class="tableSacrificeTitleStartStyle"></td>
                 <td class="tableCommentDetail">
                     <asp:Label ID="lbCommentText" runat="server" Text="评论详情"></asp:Label>
                 </td>
             </tr>
         </table>

    </asp:Content>
   
        



