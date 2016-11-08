<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="Comment" %>

<!DOCTYPE html>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
    <script type="text/javascript">
        var t = n = 0,
        count;
        $(document).ready(function () {
            count = $("#banner_list a").length;
            $("#banner_list a:not(:first-child)").hide();
            $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
            $("#banner_info").click(function () {
                window.open($("#banner_list a:first-child").attr('href'), "_blank")
            });
            $("#banner li").click(function () {
                var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
                n = i;
                if (i >= count) return;
                $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
                $("#banner_info").unbind().click(function () {
                    window.open($("#banner_list a").eq(i).attr('href'), "_blank")
                }); $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
                document.getElementById("banner").style.background = "";
                $(this).toggleClass("on");
                $(this).siblings().removeAttr("class");
            });
            t = setInterval("showAuto()", 4000);
            $("#banner").hover(function () {
                clearInterval(t)
            },
            function () {
                t = setInterval("showAuto()", 4000);
            });
        })

        function showAuto() {
            n = n >= (count - 1) ? 0 : ++n;
            $("#banner li").eq(n).trigger('click');
        }
</script>
    <html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>天堂网--评论详情</title>
     </head>
        <body>
        <form id="form1" runat="server">
        <table align="center" class="tableTopTotalStyle ">
            <tr>
                <td class="tableTopStartTextStyle">天堂网-不要让濒危变为灭绝</td>
                <td class="tableTopMidStyle">&nbsp; </td>
                <td class="auto-style1">
                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="siteTopEndTextStyle">用户登录</asp:LinkButton>
                    |<asp:LinkButton ID="LinkButton2" runat="server" CssClass="siteTopEndTextStyle">免费注册</asp:LinkButton>
                    |<asp:LinkButton ID="LinkButton3" runat="server" CssClass="siteTopEndTextStyle">帮助中心</asp:LinkButton>
                </td>
            </tr>
        </table>
    <table align="center" class="tableHeaderTotalStyle">
        <tr>
            <td class="tableHeaderLogoStyle">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.png" />
            </td>
            <td class="tableHeaderMidStyle"></td>
            <td class="tableHeaderEndStyle">
                <asp:Label ID="Label1" runat="server" CssClass="tableHeaderTextStyle" Text="查找纪念馆:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="17px" ></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="tableHeaderBtnStyle" ImageUrl="~/images/btn_search.png" />
            </td>
        </tr>
    </table>
         <table align="center" class="tableNavigatorTotalStyle">
            <tr>
                <td class="tableNavigatorStartStyle"></td>
                <td class="tableNavigatorItemStyle">
                    <a href="Default.aspx">首页</a>
                </td>
                <td class="tableNavigatorItemStyle">
                    <a href="Museum.aspx" aria-autocomplete="inline">网上纪念馆</a>
                </td>
                <td class="tableNavigatorItemStyle">
                     <a href="Establish.aspx">濒危物种</a>
                </td>
                <td class="tableNavigatorItemStyle">
                     <a href="People.aspx">灭绝物种</a>
                </td>
                <td class="tableNavigatorItemStyle">
                     <a href="Life.aspx">生态文化</a>
                </td>
                <td class="tableNavigatorItemStyle">
                     <a href="Heaven.aspx">生态资讯</a>
                </td>
                <td class="tableNavigatorItemStyle">
                     <a href="Help.aspx">帮助中心</a>
                </td>
                <td class="tableNavigatorItemStyle">
                     <a href="Establish.aspx">关于天堂网</a>
                </td>
                <td class="tableNavigatorEndStyle"></td>
            </tr>
        </table>
        <div id="banner">  
    <div id="banner_bg">       
    </div>
        <!--标题背景-->
    <div id="banner_info"> 
    </div>
<!--标题-->
    <ul>   
        <li class="on">
            1
        </li>
        <li>
            2
        </li>
        <li>
            3
        </li>
        <li>
            4
        </li>
    </ul>
    <div id="banner_list">
        <a href="Default.aspx" ><img src="images/banner_1.jpg" title="草原" alt="草原"></a> <a href="Default.aspx" ><img src="images/banner_2.jpg" title="森林" alt="森林"></a> <a href="Default.aspx" ><img src="images/banner_3.jpg" title="高山" alt="高山"></a> <a href="Default.aspx" ><img src="images/banner_4.jpg" title="夕阳" alt="夕阳"></a>
    </div>
</div>    

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

        
            <table class="tableFriendlyTotalLink">
                <tr>
                    <td class="tableSacrificeTitleStartStyle">&nbsp;</td>
                    <td class="tableSacrificeTitleTitleStyle">友情链接</td>
                    <td class="tableFriendlyContentLink">
                        <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">生态中国</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">中国生态网</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" OnClick="LinkButton13_Click">环境生态网</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton14" runat="server" OnClick="LinkButton14_Click">中国水土保持生态建设网</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click">四川生态网</asp:LinkButton>
&nbsp;</td>
                </tr>
            </table>

        

            <table align="center" class="tableEndMessageTotal">
                <tr>
                    <td class="tableEndMessageTotal">天堂网-不要让濒危变为灭绝</td>
                </tr>
            </table>
            <table align="center" class="tableNavigatorTotalStyle">
                <tr>
                    <td class="tableNavigatorTotalStyle">&nbsp;</td>
                </tr>
            </table>

            

            <table align="center" class="tableFinalMessageTotal">
                <tr>
                    <td ><span>Copyright © 2016 www.heaven.com All Rights 
                        Reserved.</span></td>
                </tr>
                <tr>
                    <td class="tableFinalMessageTotal">天堂网</td>
                </tr>
                <tr>
                    <td class="tableFinalMessageTotal">
                        <asp:Image ID="Image25" runat="server" ImageUrl="~/images/heaven.jpg" />
                    </td>
                </tr>
            </table>

            

        </form>

            

            </body>

        </html>

