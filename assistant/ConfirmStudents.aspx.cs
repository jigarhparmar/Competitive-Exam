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

        string str2 = "INSERT INTO payment (regId,userName,name,course,term1,term2,fees,fDate,sDate) VALUES('" + rId.Text + "','" + uName.Text.ToString() + "','"+fullName.Text.ToString()+"','" + sCourse.SelectedItem.Text.ToString() + "','" + term1.Text + "','"+remFees.Text+"','" + totolFees.Text + "',@date,@date1)";
        SqlCommand cmd2 = new SqlCommand(str2, con);
        string str1 = "UPDATE regTbl SET confirmUser=1 WHERE confirmUser=0 and username='" + userName.Text + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        string str3 = "UPDATE payment SET payStatus=1 WHERE term2=0 and username='" + userName.Text + "'";
        SqlCommand cmd3 = new SqlCommand(str3, con);

        string str4 = "UPDATE payment SET term2Paid=0.00 WHERE term2=0 and username='" + userName.Text + "'";
        SqlCommand cmd4 = new SqlCommand(str4, con);


        
        con.Open();
      
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();

        cmd2.Parameters.AddWithValue("@date", DateTime.Now);
        cmd2.Parameters.AddWithValue("@date1", DateTime.Now);
        cmd2.ExecuteNonQuery();
        cmd3.ExecuteNonQuery();
        cmd4.ExecuteNonQuery();

        rId.Text = "";
        uName.Text = "";
        pass.Text = "";
        fullName.Text = "";
        sCourse.SelectedIndex = 0;
        payMode.SelectedIndex = 0;
        remFees.Text = "";
       // course.Text = "";
        term1.Text = "";
        totolFees.Text = "";
        con.Close();
        Label5.Text = "Data Successfully Store....!";
        //Label5.Visible = false;
    }



     protected void payMode_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (payMode.SelectedValue == "Full")
        {

            term1.Text = totolFees.Text;

            remFees.Text = "0.00";

           
        }


        else
        {

            Int32 val1 = Convert.ToInt32(totolFees.Text) / 2;
            term1.Text = val1.ToString();


            remFees.Text = val1.ToString();


           


        }

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

    