using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;
public partial class assistant_ShowNotification : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\CompetitiveExam\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
            string str = "Update contactUsTbl set Status='Y' where Status='N'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        if (!this.IsPostBack)
        {
            

            DataTable dt = this.GetData();
            StringBuilder html = new StringBuilder();
            
            html.Append("<table border = '1'cellpadding='0' cellspacing='0' style='color:#000000;' >");
            html.Append("<tr>");
            foreach (DataColumn column in dt.Columns)
            {
                html.Append("<th bgcolor='#b3dced'>");
                html.Append(column.ColumnName);
                html.Append("</th>");
                
            }
            html.Append("</tr>");

            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<td style='color:#000000;'>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                
                }

                html.Append("</tr>");
                      
            }
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
        }

        /*string dt1 = DateTime.Now.ToString("MM/dd/yyyy");
        string str = "SELECT name,emailId,contactNo,message,iDate FROM contactUsTbl iDate ";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        cmd.ExecuteNonQuery();
        Label2.Text = "Data bind";
        con.Close();
        */
    }

    private DataTable GetData()
    {
        
        
        //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True"))
        {
            string dt1 = System.DateTime.Now.ToString();
            Label1.Text = dt1;
            Label1.Visible = false;
            using (SqlCommand cmd = new SqlCommand(" SELECT contactId,name,emailId,contactNo,message FROM contactUsTbl WHERE iDate = '" + Label1.Text + "' "))
           // using (SqlCommand cmd = new SqlCommand(" SELECT MAX(contactId) FROM contactUsTbl "))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                       // Session["contactId"] = cmd.ExecuteScalar();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}