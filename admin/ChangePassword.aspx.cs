using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class assistant_ChangePassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\CompetitiveExam\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "SELECT userName,password from loginTbl where userName='"+Session["ADMIN_Id"]+"'";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            userName.Text = dr["userName"].ToString();
            TextBox2.Text = dr["password"].ToString();
        }
        //cmd.ExecuteNonQuery();
        //Label4.Text = Session["Id"].ToString();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = "UPDATE loginTbl SET password='"+TextBox3.Text.ToString()+"' WHERE password='"+TextBox2.Text.ToString()+"'";
        SqlCommand cmd = new SqlCommand(str1, con);
        con.Open();
        cmd.ExecuteNonQuery();
        userName.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label4.Text = "Password Successfully change";
        con.Close();
    }
}