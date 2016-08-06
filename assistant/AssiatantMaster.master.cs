using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class assistant_AssiatantMaster : System.Web.UI.MasterPage
{
    
    
    
    protected void Page_Init(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ASSISTANT_Id"] == null)
        {
            Response.Redirect("~/LoginForm.aspx");

        }

        Label1.Text = " Wellcome " + Session["ASSISTANT_Id"].ToString();

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        string str = "Select Count(iDate) from contactUsTbl where iDate='"+System.DateTime.Now.ToShortDateString()+"' and Status='N'";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();

        //int i = Convert.ToInt16(cmd.ExecuteScalar());
       // Label2.Text = i.ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/LoginForm.aspx");
    }
}
