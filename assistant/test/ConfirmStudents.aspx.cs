using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class assistant_ConfirmStudents : System.Web.UI.Page
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
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "SELECT regId,userName,fName,lName,password,course,fees FROM regTbl,course  WHERE userName='" + userName.Text.Trim() + "'  and (confirmUser=0 or confirmUser=1)  ";
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            rId.Text = (dr["regId"].ToString());
            uName.Text = (dr["userName"].ToString());
            fullName.Text = (dr["fName"].ToString() +" " + dr["lName"].ToString());
            pass.Text = (dr["password"].ToString());
           
//            course.Text = (dr["course"].ToString());
            totolFees.Text = (dr["fees"].ToString());

            
        }
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        string str = "INSERT INTO loginTbl (regId,userName,password) VALUES ('" + rId.Text + "','" + uName.Text.ToString() + "','" + pass.Text.ToString() + "')";
        SqlCommand cmd = new SqlCommand(str,con);

        string str2 = "INSERT INTO payment (regId,userName,course,term1,fees) VALUES('" + rId.Text + "','" + uName.Text.ToString() + "','" + sCourse.SelectedItem.Text.ToString() + "','" + term1.Text.ToString() + "','" + totolFees.Text.ToString() + "')";
        SqlCommand cmd2 = new SqlCommand(str2, con);
        string str1 = "UPDATE regTbl SET confirmUser=1 WHERE confirmUser=0 and username='" + userName.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        con.Open();
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        rId.Text = "";
        uName.Text = "";
        pass.Text = "";
        
       // course.Text = "";
        term1.Text = "";
        totolFees.Text = "";
        con.Close();
        Label5.Text = "Data Successfully Store....!";
        //Label5.Visible = false;
    }

    protected void sCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str1 = "SELECT fees FROM course WHERE cName='" + sCourse.SelectedItem.Text.ToString() + "' ";
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
    