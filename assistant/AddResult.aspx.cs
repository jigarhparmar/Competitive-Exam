using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class assistant_AddResult : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "SELECT userName,fName,lName,course FROM regTbl WHERE userName='" + userName.Text.Trim() + "' and confirmUser=1";
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            fName.Text = (dr["fName"].ToString() + " " + dr["lName"].ToString());
            course.Text = (dr["userName"].ToString());
            course.Text = (dr["course"].ToString());
        }
        
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str1 = "INSERT INTO stuResultTbl (userName,fullName,course,subject,totalMarks,obtainMarks,rDate) VALUES ('" + userName.Text.ToString() + "','" + fName.Text.ToString() + "','" + course.Text.ToString() + "','" + selectSub.SelectedItem.Text.ToString() + "','" + ooMarks.Text + "','" + obMarks.Text + "',@Date)";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        con.Open();
        cmd1.Parameters.AddWithValue("@date", DateTime.Now);
        cmd1.ExecuteNonQuery();
        userName.Text = "";
        fName.Text = "";
        course.Text = "";
        selectSub.SelectedIndex = 0;
        ooMarks.Text = "";
        obMarks.Text = "";
        Label5.Text = "Data Successfully Add";
        con.Close();
    }
}