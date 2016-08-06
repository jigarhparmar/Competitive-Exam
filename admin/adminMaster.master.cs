using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ADMIN_Id"] == null)
        {
            //Label1.Visible = true;
            Response.Redirect("~/LoginForm.aspx");

        }

        Label1.Text = " Wellcome " + " " + Session["ADMIN_ID"].ToString();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/LoginForm.aspx");
    }
}
