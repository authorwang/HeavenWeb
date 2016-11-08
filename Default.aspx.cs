using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DefaultNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "天堂网--首页";
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