using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class ContactUs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        string str = "INSERT INTO contactUsTbl (name,emailId,contactNo,message,iDate) VALUES ('" + name.Text.ToString() + "','" + eId.Text.ToString() + "','" + contactNo.Text + "','" + message.Text.ToString() + "',@date)";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();
        cmd.Parameters.AddWithValue("@date", DateTime.Now);
        cmd.ExecuteNonQuery();
        name.Text = "";
        eId.Text = "";
        contactNo.Text = "";
        message.Text = "";
        msg.Text = "Thank you for contact....! We will get back to you Soon..!";
        con.Close();
    }
}