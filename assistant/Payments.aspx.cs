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
        string str = "SELECT regId,userName,name,course,term1,term2, fees,sDate FROM payment  WHERE userName='" + userName.Text.Trim() + "'  and payStatus='0'  ";
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            rId.Text = (dr["regId"].ToString());
            uName.Text = (dr["userName"].ToString());
            fName.Text = (dr["name"].ToString());
            sCourse.SelectedItem.Text = (dr["course"].ToString());
            term1.Text=(dr["term1"].ToString());
            term2.Text =(dr["term2"].ToString());

           // term2.Text = (dr["term2"].ToString());
            totolFees.Text = (dr["fees"].ToString());
            
            date2.Text = dr["sDate"].ToString();

        }
        con.Close();
       
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string str = "UPDATE payment SET payStatus=1 , term2Paid=term1 , sDate='"+System.DateTime.Now.ToShortDateString()+"' WHERE payStatus=0 and username='" + userName.Text + "' or sDate='"+date2.Text.ToString()+"'";
        SqlCommand cmd = new SqlCommand(str, con);
       
       con.Open();
       

       

      
        cmd.ExecuteNonQuery();
       
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
    
    