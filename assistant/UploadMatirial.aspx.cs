using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class assistant_Timetbl : System.Web.UI.Page
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

            sCource.DataSource = dr;
            sCource.DataValueField = "cId";
            sCource.DataTextField = "cName";

            sCource.DataBind();
            sCource.Items.Insert(0, new ListItem("SELECT COURSE", "0"));
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath(".") + @"\Material\" + FileUpload1.FileName);
        string str = "insert into tblUploadMaterial(coursename,materialfile)values('"+sCource.SelectedItem.Text+"','" + FileUpload1.FileName + "')";
        SqlCommand cmd1 = new SqlCommand();
        cmd1 = new SqlCommand(str, con);
        con.Open();
        cmd1.ExecuteNonQuery();
        Label1.Text = "File upload successfully...!";
        con.Close(); 

    }
}