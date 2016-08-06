using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class assistant_Notifaication : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {


            string str1 = "SELECT cId,cName FROM course";
            SqlCommand cmd = new SqlCommand(str1, con);
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            sCourse.DataSource = dr;
            sCourse.DataValueField = "cId";
            sCourse.DataTextField = "cName";

            sCourse.DataBind();
            sCourse.Items.Insert(0, new ListItem("SELECT COURSE", "0"));
            con.Close();
        }
        //Label8.Visible = false;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string s1;
        string s2;

        string str = "SELECT userName FROM regTbl WHERE userName='"+uName.Text.ToString()+"' ";
        string str1 = "SELECT userName FROM payment WHERE userName='" + uName.Text.ToString() + "' ";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlCommand cmd2 = new SqlCommand(str1, con);
        s1 = cmd2.ExecuteScalar().ToString();
        s2 = cmd.ExecuteScalar().ToString();
        if (s2 == uName.Text.ToString())
        {
            if (s1 == uName.Text.ToString())
            {
                Label8.Text = "Registration";
            }
            else
            {
            }
        }
        else
        {
            Label8.Text = "Payment Table";
        }
      /*  string str = "SELECT regId,userName,course,term1,term2,fees FROM payment WHERE userName='" + userName.Text.Trim() + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            rId.Text = (dr["regId"].ToString());
            uName.Text = (dr["userName"].ToString());
            //course.Text = (dr["course"].ToString());
            term1.Text = (dr["term1"].ToString());
            term2.Text = (dr["term2"].ToString());
            totolFees.Text = (dr["fees"].ToString());

        }
        con.Close();
        */
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string str1 = "INSERT INTO payment (regId,userName,course,term1,term2,fees) VALUES ('" + rId.Text + "','" + uName.Text.ToString() + "','" + sCourse.SelectedItem.Text.ToString() + "','" + term1.Text.ToString() + "','" + term2.Text.ToString() + "','" + totolFees.Text + "')";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        con.Open();
        cmd1.ExecuteNonQuery();
        rId.Text = "";
        uName.Text = "";
        term1.Text = "";
        term2.Text = "";
        totolFees.Text = "";
        con.Close();
        Label8.Text = "Student Payment Suceesfully....!";
    }

    protected void sCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str1 = "SELECT fees FROM course WHERE cName='"+sCourse.SelectedItem.Text.ToString()+"' ";
        SqlCommand cmd2 = new SqlCommand(str1, con);
        con.Open();
        SqlDataReader dr;
        dr = cmd2.ExecuteReader();
        while (dr.Read())
        {
            totolFees.Text = dr["fees"].ToString();
        }
    }
}
    
    