using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assistant_AddNotification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void  lbInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["notifation"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("noticeTxt")).Text;

        SqlDataSource1.InsertParameters["link"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("linkTxt")).Text;

        SqlDataSource1.Insert();
    }
    
}

        