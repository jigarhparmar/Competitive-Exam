using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class LoginForm : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from loginTbl where userName='" + userName.Text + "' and password='" + password.Text + "'";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "loginTbl");
        if (ds.Tables[0].Rows.Count > 0)
        {
            string roll;
     
            userName.Text = ds.Tables[0].Rows[0]["userName"].ToString();
            password.Text = ds.Tables[0].Rows[0]["password"].ToString();
            roll = ds.Tables[0].Rows[0]["userType"].ToString();
          //  cUser = ds.Tables[0].Rows[0]["confirmUser"].ToString();
            if (roll == "admin")
            {
               
                Session["ADMIN_Id"] = userName.Text;
                Response.Redirect("~/admin/AdminIndex.aspx");
            }
            else if (roll == "assistant")
            {
               
                Session["ASSISTANT_Id"] = userName.Text;
                Response.Redirect("~/assistant/AssistantIndex.aspx");
            }
            else if (roll == "student")
            {
                
                Session["STUDENT_Id"] = userName.Text;
                Response.Redirect("~/students/StudentIndex.aspx");
               /*if (cUser == "1")
                {
                  
                }
                else if (cUser == "0")
                {
                    errorMsg.Text = "You Have Confirm Register First...!";
                    errorMsg.Visible = true;
                }*/
            }
            else
            {
                errorMsg.Text = "Invalid UserName Or Password...";
                errorMsg.Visible = true;
            }
            

        }
        else
        {
            errorMsg.Text = "Invalid UserName Or Password...";
            errorMsg.Visible = true;
        }
       
    }
}