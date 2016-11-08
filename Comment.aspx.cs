using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Comment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Page.Title = "天堂网--评论详情";
        string commentAuthor = null;
        string comment1 = "地球爷爷发烧了，他痛苦的对月亮婆婆说：不知道地球上的人们怎么了，一天到晚就知道开空调，弄得我浑身发热，跟发烧似的，就快要爆炸了，如果这样，地球上的人们就无法生活了，希望他们要快点改了一天到晚开空调的坏习惯，节约能源，使我能像以前一样快乐的旋转，这样，地球上的人们也能快乐的生活。";
        string comment2 = "我是一棵无名的小草，生长在一所漂亮的学校里，不管风吹雨打，酷暑寒冬，我都挺立在草坪上。那儿有花儿陪我说话，有大树为我遮风挡雨，有许多许多小朋友跟我一起长大，我过得自由自在，无忧无虑，非常快乐。    可是有一天，悲剧开始上演了。记得那一天是玉兰花姐姐的生日，玉兰花姐姐叫我通知兄弟姐妹们参加她的生日聚会。";
        string comment3 = "从前，有个小男孩，他每天要用好多纸巾。吃过东西，他用纸巾擦擦嘴，再用纸巾擦擦手，还用纸巾擦擦衣服。这天，爸爸买回一筒纸巾。爸爸说这是“神奇牌”纸巾，跟以前的不一样哦。小男孩想看看，纸巾究竟神奇在哪里。他拉出一截，没什么神奇；他把纸巾拉到阳台上，也没什么神奇；再把纸巾拉到楼梯上，还是没什么神奇；纸巾被拉得长长的，一直拉到小区外面；再拉到市民广场，绕过一棵棵粗粗的树。小男孩跑呀跑，拉呀拉，纸巾怎么也拉不完……跑呀跑，拉呀拉，小男孩回头一看，树林不见了！他扔了纸巾，惊叫着跑回家：“爸爸，爸爸，树林没有啦——”爸爸说：“制造纸巾要用树木做原料。你用掉了这么多纸巾，树林当然就没有啦！”为了让树林回到市民广场，小男孩又跑回去，一边跑，一边卷……跑呀跑，卷呀卷，纸巾全都卷了回来，市民广场的树林又回来了。小男孩真高兴呀！小朋友们，木材是制造纸巾的原料，纸巾用得越多，耗费的树木就越多。所以我们在家的时候，应该尽可能的多用毛巾，节约纸巾。";
        string comment4 = "古时候，在我国江南某地有一个小官吏。一天，他接到一个出差的任务，是到当时的京城去送文件。他骑着一匹马匆匆上了路，傍晚，他歇宿在一个旅馆里。旅馆里有一口水井，井水冬暖夏凉，还有一丝淡淡的甘甜。小官吏喝着井水，感到旅途的辛劳减轻了不少。这口井为南来北往的人增添了许多美好的回忆。但这个小官吏是个自私自利的人，第二天早上他离开旅馆时，顺手便把马吃剩下的残草败根倒在了水井里。过了一个月左右，小官吏从京城办完事回来，又来到这家旅馆。他赶到这里时，天已完全黑了，经过一天的长途奔波，小官吏感到又累又渴，他便从水井里打水上来喝。由于天黑看不清水桶里的水，小官吏又渴得够呛，喝起水来如同牛饮一样，结果喝进去一根草杆。草杆卡在小官吏的喉咙里，吞又吞不下，吐又吐不出，不一会儿，小官吏就一命呜呼了。而这草杆正是他前次来的时候，倒在水井里的。 古人为了吸取小官吏的教训，便告诫后人说：“千年井，不反唾。”这就是告诫人们不要弄脏水源的意思。";
        string comment5 = "一只小兔子一蹦一跳地来到公园里玩。公园里有好多动物，有公牛，有河马，有小松鼠，有大象，还有斑马……里面好像已经变成动物园了。动物们有的在散步，有的在锻炼，还有的在活动……";
        string comment6 = "不久，那棵树就被那人砍倒了，看到同伴这样被砍倒，其它树都流下了伤心的泪水，一是为失去了一个同伴，二是为自己的未来担心，不知道哪天自己也会倒下去。只见那个男人又挥斧向另一棵树砍去，这惊到了树上的啄木鸟。啄木鸟看了看那人木头般的脑袋，便飞到它的头上啄，一边啄一边说：“这人脑袋里一定有虫。”";
        string comment7 = "“是啊，人类经常把垃圾倒入河中，原来清澈见底的小河如今已是浑浊不堪、臭气熏天了!连以前常在小河中与小鱼小虾们一起嬉戏、玩水的孩子们，现在在过河的时候都要捏着鼻子匆匆跑过去。”老虎一边捻着胡须，一边无可奈何地说。";
        string comment8 = "春天来了，万物复苏，小青蛙也睡醒了。它想，我的好朋友们呢?青青的水、绿绿的草、红红的花、还有那棵老松树，好久不见我，一定想听我唱歌了。于是，小青蛙赶紧起来，跳出洞外。咦，小池塘哪去了?地面怎么是干的了?她怎么也找不到那片河水了。她就去问松树爷爷：“那片河水到哪里去了?”松树爷爷说：“小青蛙，你看那是什么?”“那，那……是工厂!”“对了，小青蛙，我告诉你吧，工厂有一个大管子把池塘里的水全吸干了。”";
        string comment9 = "大树说：“破坏森林是不折不扣的自杀行为，这个道理连小学生都知道，为什么大人却不知道呢?他们这样做是不好的。树木砍太多会下暴雨，会引发泥石流。”";
        string comment10 = "中国环境标志是一种官方的产品证明性商标，图形的中心结构表示人类赖以生存的环境，外围的10个环紧密结合、环环相扣，表示公众参与共同保护环境；同时10个环的“环”字与环境的“环”同字，其寓意为“全民联合起来，共同保护人类赖以生存的环境”。获准使用标志的产品，不仅要质量合格，而且其生产、使用和处理过程均符合特定的环境保护要求，与同类产品相比，具有低毒少害、节约资源等优势。";
        if (Request.QueryString["commentAuthor"] != null)
        {
            commentAuthor = Request.QueryString["commentAuthor"];
        }
        else 
        {
            Response.Redirect("CommentAll.aspx");
        }

        lbCommentAuthor.Text = commentAuthor;

        switch (commentAuthor)
        {
            case "A":
                lbCommentText.Text = comment1;
                break;
            case "B":
                lbCommentText.Text = comment2;
                break;
            case "C":
                lbCommentText.Text = comment3;
                break;
            case "D":
                lbCommentText.Text = comment4;
                break;
            case "E":
                lbCommentText.Text = comment5;
                break;
            case "F":
                lbCommentText.Text = comment6;
                break;
            case "G":
                lbCommentText.Text = comment7;
                break;
            case "H":
                lbCommentText.Text = comment8;
                break;
            case "I":
                lbCommentText.Text = comment9;
                break;
            case "J":
                lbCommentText.Text = comment10;
                break;
            default:
                Response.Redirect("Default.aspx");
                break;
        }
    }
    //link:生态中国
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.eco.gov.cn/");
    }

    //link:中国生态网
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.zgshengtaiw.roboo.com/");
    }

    //link:环境生态网
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.eedu.org.cn/Index.shtml");
    }


    //link:中国水土保持生态建设网
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.swcc.org.cn/");
    }


    //link:四川生态网
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.stw001.com/");
    }
}