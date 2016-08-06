using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data.Sql;

public partial class students_studFeed : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string str = "INSERT INTO feedTbl(userName,fullName,messag) VALUES ('" + utxt.Text.ToString() + "','" + ftxt.Text.ToString() + "','" + mtxt.Text.ToString() + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
       
        cmd.ExecuteNonQuery();
        utxt.Text = "";
        ftxt.Text = "";
        mtxt.Text = "";
        
        con.Close();



    }
}