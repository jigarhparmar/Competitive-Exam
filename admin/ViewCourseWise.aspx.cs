using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
public partial class admin_ViewCourseWise : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
  //  ReportDocument rd = new ReportDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string str1 = "SELECT cId,cName FROM course";
            SqlCommand cmd = new SqlCommand(str1, con);
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            cCourse.DataSource = dr;
            cCourse.DataValueField = "cId";
            cCourse.DataTextField = "cName";

            cCourse.DataBind();
           // cCourse.Items.Insert(0, new ListItem("SELECT COURSE", "0"));
            con.Close();
        }

    }


    protected void sCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "SELECT userName,gender,emailId,cNumber,city,eDetail FROM regTbl WHERE course='" + cCourse.SelectedItem.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();
        GridView2.DataSource = dr;
        GridView2.DataBind();
        // Label3.Text = "Download Matirial";
        con.Close();
    }
    protected void Course_Click(object sender, EventArgs e)
    {
        ExportGridToword1();
    }
    private void ExportGridToword1()
    {

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Course.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        GridView2.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
        GridView2.AllowPaging = true;
        GridView2.DataBind();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //base.VerifyRenderingInServerForm(control);
    }

    }

    
   