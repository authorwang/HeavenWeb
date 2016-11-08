<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="DefaultNew" %>

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
    <title>天堂网--首页</title>
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

        <table class="tableLoginTotalStyle">
        <tr>
            <td class="auto-style6">用户登录</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <div class="floatLeft" style="color: black;font-family: 微软雅黑, 雅黑, yahei, 黑体, Arial;">用户名：</div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="marginFloatRight"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <div class="floatLeft" style="color: black;font-family: 微软雅黑, 雅黑, yahei, 黑体, Arial;">密码：</div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="marginFloatRight"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkBox"  Text="30天内免登录" />
                <asp:LinkButton ID="LinkButton9" runat="server" CssClass="marginFloatRight">忘记密码</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="text-align:center" class="auto-style7">
                
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/btn_login.png" />
                
            </td>
        </tr>
        <tr>
            <td style="text-align:center" class="auto-style15">
                <asp:LinkButton ID="LinkButton10" runat="server">注册用户，免费建立纪念馆</asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
        <div style="width:1620px">
              <table class="tableCommentTotalStyle">
            <tr>
                <td class="tableCommentStartStyle">&nbsp;</td>
                <td class="tableCommentIconStyle">
                    <asp:Image ID="Image16" runat="server" ImageUrl="~/images/users/user_1.jpg" />
                </td>
                <td class="tableCommentItemStyle">
                    <a href="Default.aspx">保护濒危动物是我们每个人义不容辞的责任。</a>
                </td>
                <td class="tableCommentIconStyle">
                    <asp:Image ID="Image18" runat="server" ImageUrl="~/images/users/user_2.jpg" />
                </td>
                <td class="tableCommentItemStyle">
                    <a href="Default.aspx">灭绝物种给我们敲响了警钟，保护生态平衡势在必行！</a>
                </td>
            </tr>
            <tr>
                <td class="tableCommentStartStyle">&nbsp;</td>
                <td class="tableCommentIconStyle"">
                    <asp:Image ID="Image17" runat="server" ImageUrl="~/images/users/user_3.jpg" />
                </td>
                <td class="tableCommentItemStyle">
                     <a href="Default.aspx">请不要让这个世界渐渐没有了一丝活力。</a>

                </td>
                <td class="tableCommentIconStyle"">
                    <asp:Image ID="Image19" runat="server" ImageUrl="~/images/users/user_4.jpg" />
                </td>
                <td class="tableCommentItemStyle">
                    <a href="Default.aspx">人类不应该是地球上最后一个物种。</a>
                </td>
            </tr>
        </table>
             <table class="tableYesterdayStyle">
            <tr>
                <td class="tableYesterdayTitle">那年今日</td>
            </tr>
            <tr>
                <td style="text-align: center; color: black; font-family: 微软雅黑, 雅黑, yahei, 黑体, Arial;">昔日的你我，曾共享这个世界<br />
                    那年今日，你却离开了我们</td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Image ID="Image20" runat="server" ImageUrl="~/images/yesterday/yesterday_1.png" />
                    <asp:Image ID="Image21" runat="server" ImageUrl="~/images/yesterday/yesterday_2.png" />
                    <asp:Image ID="Image22" runat="server" ImageUrl="~/images/yesterday/yesterday_3.png" />
                </td>
            </tr>
            <tr>
                <td style="color: black; font-family: 微软雅黑, 雅黑, yahei, 黑体, Arial; text-align: center;">+查看更多</td>
            </tr>
        </table>
        </div>
        <table  class="tableAnnouncementTotal">
        <tr class="normalBorder">
            <td class="tableSacrificeTitleStartStyle"></td>
            <td class="tableSacrificeTitleTitleStyle">生态文化</td>
            <td class="auto-style12"></td>
            <td class="auto-style13">
             <a href="Default.aspx">更多...</a>
            </td>
            <td class="tableSacrificeTitleTitleStyle">评论选登</td>
            <td class="auto-style12"></td>
            <td class="auto-style13"><a href="Default.aspx">更多...</a>
            </td>
        </tr>
        </table>

        <div style="width:1620px">
                    <table class="tableAnnouncementContentTotal">
        <tr class="tableAnnouncementContentTotal">
            <td class="tableAnnoucementContentStart"></td>
            <td class="tableAnnouncementContentContent">
                <ul style="margin-top:5px;font-size:14px;margin:0px;padding:0px;">
                    <li style="margin-top:3px">
                    <a href="http://opinion.people.com.cn/n/2013/0111/c1003-20166858.html">弘扬生态文化 推进生态文明 建设美丽中国</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.xinhuanet.com/city/2016-06/21/c_129079324.htm">中国生态文化发展纲要（2016-2020年）</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://sdxjw.dzwww.com/lvyj/stwmjs/201508/t20150831_10404577.htm">培育生态文化支撑生态文明</a>
                    </li>
                                        <li style="margin-top:3px">
                        <a href="http://economy.gmw.cn/newspaper/2016-10/29/content_117528766.htm">加快建成武陵山片区生态文化旅游中心城</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.163.com/16/1027/09/C4CFK2UT00014AEE.html">肃南1.8亿打造雪山生态文化体育旅游景区</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://auto.sohu.com/20161024/n471109409.shtml">斯巴鲁捐资50万元 助力安徽古村生态建设</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.163.com/16/1027/04/C4BU4O6H00014AEF.html">宁波东吴镇打响生态文化品牌</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://tech.gmw.cn/2016-10/28/content_22696412.htm">农村生态环境开始恢复 又见穿山甲</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://www.cma.gov.cn/2011xwzx/2011xqxxw/2011xjctz/201610/t20161027_339829.html">来安：印发生态环境气象考核办法</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.xinhuanet.com/local/2016-10/27/c_1119795844.htm">中科院:西藏仍是全球生态环境最好地区之一</a>
                    </li>
                </ul>
            </td>
            <td class="tableAnnoucementContentMid"></td>
            <td class="tableAnnouncementContentContent">
                       <ul style="margin-top:5px;font-size:14px;margin:0px;padding:0px;">
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=A">A：保护生态是我们义不容辞的责任！</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=B">B：我们绝不能轻视物种的灭绝！</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=C">C：濒危只是开始，不要让灭绝成为结束。</a>
                    </li>
                   <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=D">D：生态需要平衡，人类亦是生态之一。</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=E">E：纪念灭绝物种，保护濒危生命。</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=F">F：没有杀戮，就没有伤害。</a>
                    </li>
                                        <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=G">G：环境与人类共存,开发与保护同步。</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=H">H：人类与自然互助，文明共环境和谐。</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=I">I：同享一片蓝天，共创无限和谐。</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="Comment.aspx?commentAuthor=J">J:青山 绿水 蓝天 白云 这才是我们的家。</a>
                    </li>
                </ul></td>
            <td class="tableAnnouncementContentEnd"></td>
        </tr>
        </table>
        <table class="tableInfoTotal">
                <tr>
                    <td class="tableYesterdayTitle">生态资讯</td>
                </tr>
                <tr>
                    <td>
                        <div style="width:300px">
                            <div style="float:left">
                                <asp:Image ID="Image24" runat="server" ImageUrl="~/images/info/info_head.jpg" />
                            </div>
                            <div style="float:right;text-align:center;">
                                 <a href="http://opinion.people.com.cn/n/2013/0111/c1003-20166858.html" class="smallCommonFont">弘扬生态文化 建设美丽中国</a>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul style="float:right;margin-top:5px;font-size:14px;margin:0px;padding:0px;">
                    <li style="margin-top:3px">
                    <a href="http://opinion.people.com.cn/n/2013/0111/c1003-20166858.html">弘扬生态文化 推进生态文明 建设美丽中国</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.xinhuanet.com/city/2016-06/21/c_129079324.htm">中国生态文化发展纲要（2016-2020年）</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://sdxjw.dzwww.com/lvyj/stwmjs/201508/t20150831_10404577.htm">培育生态文化支撑生态文明</a>
                    </li>
                                        <li style="margin-top:3px">
                        <a href="http://economy.gmw.cn/newspaper/2016-10/29/content_117528766.htm">加快建成武陵山片区生态文化旅游中心城</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.163.com/16/1027/09/C4CFK2UT00014AEE.html">肃南1.8亿打造雪山生态文化体育旅游景区</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://auto.sohu.com/20161024/n471109409.shtml">斯巴鲁捐资50万元 助力安徽古村生态建设</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.163.com/16/1027/04/C4BU4O6H00014AEF.html">宁波东吴镇打响生态文化品牌</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://tech.gmw.cn/2016-10/28/content_22696412.htm">农村生态环境开始恢复 又见穿山甲</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://www.cma.gov.cn/2011xwzx/2011xqxxw/2011xjctz/201610/t20161027_339829.html">来安：印发生态环境气象考核办法</a>
                    </li>
                    <li style="margin-top:3px">
                        <a href="http://news.xinhuanet.com/local/2016-10/27/c_1119795844.htm">中科院:西藏仍是全球生态环境最好地区之一</a>
                    </li>
                </ul>
                    </td>
                </tr>
            </table>
        </div>

        
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

