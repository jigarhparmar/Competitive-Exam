using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Reporting;
public partial class admin_ViewReport : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    ReportDocument rd = new ReportDocument();   
    protected void Page_Load(object sender, EventArgs e)
    {
        string str1 = "SELECT cId,cName FROM course";
        SqlCommand cmd = new SqlCommand(str1, con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        DropDownList1.DataSource = dr;
        DropDownList1.DataValueField = "cId";
        DropDownList1.DataTextField = "cName";

        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("SELECT COURSE", "0"));
        con.Close();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        //string str = "SELECT payId,name,course,term1,fees,fDate FROM payment WHERE course='"+DropDownList1.SelectedItem.ToString().Trim() +"' ";
        
        SqlCommand cmd = new SqlCommand("paymentp", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sa = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sa.Fill(dt);
        rd.Load(Server.MapPath("~/admin/CrystalReport.rpt"));
        rd.SetDataSource(dt);
        rd.SetParameterValue("payment", DropDownList1);
        CrystalReportViewer1.ReportSource = rd;
        CrystalReportViewer1.DataBind();
        con.Close();
    }
} 