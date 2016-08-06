using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class assistant_AddCourse : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "INSERT INTO course (cName,duration,fees) VALUES ('" + cNametxt.Text.ToString() + "','" + durationtxt.Text.ToString() + "','"+feestxt.Text+"')";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();
        cmd.ExecuteNonQuery();
        cNametxt.Text = "";
        durationtxt.Text = "";
        feestxt.Text = "";
        
        Label4.Text = "Data Successfully Store......!";
        con.Close();

    }
}