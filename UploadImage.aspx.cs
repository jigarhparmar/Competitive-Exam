using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class UploadImage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["STUDENT_Id"] == null)
        {
            Response.Redirect("~/LoginForm.aspx");

        }
        string str = "SELECT regId,userName From regTbl";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            rId.Text = (dr["regId"].ToString());
            uName.Text = (dr["userName"].ToString());
        }
        con.Close();

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath(".") + @"\stuImages\" + FileUpload1.FileName);
        string str = "insert into stuImgTbl (imageName,regId,userName)values('" + FileUpload1.FileName + "','" + rId.Text + "','" + uName.Text.ToString() + "')";
        SqlCommand cmd1 = new SqlCommand();
        cmd1 = new SqlCommand(str, con);
        con.Open();
        cmd1.ExecuteNonQuery();
        Label8.Text = "Registration Successfully...!";
        Response.Redirect("~/loginForm.aspx");
        con.Close(); 

    }
}