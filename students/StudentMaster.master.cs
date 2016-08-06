using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class students_StudentMaster : System.Web.UI.MasterPage
{
    protected void Page_Init(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();

    }
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    //Master_Class objMaster_Class = new Master_Class();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["STUDENT_Id"] == null)
        {
            //Label1.Visible = true;
            Response.Redirect("~/LoginForm.aspx");

        }

        Label1.Text = " Wellcome " + " " + Session["STUDENT_Id"].ToString();


        string str = "SELECT imageName,userName FROM stuImgTbl WHERE userName='" + Session["STUDENT_Id"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Image1.ImageUrl = @"~/stuImages/" + dr["imageName"].ToString();
        }
        con.Close();
        Repeater1.DataSource = GetEvents();
        Repeater1.DataBind();
    }
    public DataSet GetEvents()
    {
        string str = "SELECT notifation,link FROM noticeTbl";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("notifation",typeof(string)));
        dt.Columns.Add(new DataColumn("link", typeof(string)));
        DataRow dr;
        int i = 1;
        int len = Convert.ToInt16(ds.Tables[0].Rows.Count);
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (i = 0; i < len; i++)
            {
                dr = dt.NewRow();
                dr["notifation"] = ds.Tables[0].Rows[i]["notifation"].ToString();
                dr["link"] = ds.Tables[0].Rows[i]["link"].ToString();
                dt.Rows.Add(dr);
            }
        }

        return ds;
    }
    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/LoginForm.aspx");
    }

}
