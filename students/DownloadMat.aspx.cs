using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class students_DownloadMat : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {


            string str1 = "SELECT cId,cName FROM course";
            SqlCommand cmd = new SqlCommand(str1, con);
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            dropCourse.DataSource = dr;
            dropCourse.DataValueField = "cId";
            dropCourse.DataTextField = "cName";

            dropCourse.DataBind();
            dropCourse.Items.Insert(0, new ListItem("SELECT COURSE", "0"));
            con.Close();
        }
    }
    protected void dropCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "SELECT * FROM tblUploadMaterial WHERE coursename='"+dropCourse.SelectedItem.Text.ToString()+"'";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        Label3.Text = "Download Matirial";
        con.Close();
    }

    public void Download(object sender, DataListCommandEventArgs e)
    {
        int i=Convert.ToInt16(e.CommandArgument);
        string str = "SELECT materialfile FROM tblUploadMaterial WHERE materialid='"+i+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        string file = cmd.ExecuteScalar().ToString();

        if (file != string.Empty)
        {
            Button lnk = sender as Button;
            string filePath = @"~\assistant\Material\" + file;
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath(filePath));
            Response.End();
        }

    }
    
}