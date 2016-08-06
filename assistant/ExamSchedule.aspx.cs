using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assistant_ExamSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        SqlDataSource1.InsertParameters["course"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("TextBox5")).Text;

        SqlDataSource1.InsertParameters["subject"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("TextBox6")).Text;


        SqlDataSource1.InsertParameters["date"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("TextBox7")).Text;

        SqlDataSource1.InsertParameters["time"].DefaultValue =
             ((TextBox)GridView1.FooterRow.FindControl("TextBox8")).Text;

        SqlDataSource1.Insert();

    }

}