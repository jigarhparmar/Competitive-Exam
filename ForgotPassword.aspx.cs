 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Net.Mail;
public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\CompetitiveExam\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\CompetitiveExam\App_Data\Database.mdf;Integrated Security=True;User Instance=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT userName,password,emailId FROM regTbl WHERE emailId='" + eId.Text.Trim() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
            }
       

            if(ds.Tables[0].Rows.Count>0)
            {
                MailMessage Msg = new MailMessage();
                Msg.From = new MailAddress(eId.Text);
                Msg.To.Add(eId.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi, <br/>Please check your Login Details:-<br/><br/>Your UserName:- " + ds.Tables[0].Rows[0]["userName"] + "<br/><br/>Your Email Id:- " + ds.Tables[0].Rows[0]["emailId"] + "<br/><br/> Your Email Id:-" + ds.Tables[0].Rows[0]["password"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("jigar.h.parmar@gmail.com", "MicroJig@rBrain");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                errorMsg.Text = "Your Details Send TO your EmailAddress...!";
                eId.Text = "";
            }
            else
            {
                errorMsg.Text = "Your EmailId does not Exist...!";
            }

        }

        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }
}