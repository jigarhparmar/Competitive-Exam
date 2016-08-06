using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class students_ViewResult : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\CompetitiveExam\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "SELECT course,subject,totalMarks,obtainMarks,rDate  from stuResultTbl where userName='" + Session["STUDENT_Id"] + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sd.Fill(ds, "stuResultTbl");
        GridView1.DataSource=ds;
        GridView1.DataBind();
        //cmd.ExecuteNonQuery();
        //Label4.Text = Session["Id"].ToString();
        con.Close();
    }
}