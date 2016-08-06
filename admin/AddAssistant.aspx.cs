using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Text.RegularExpressions;


public partial class admin_AddAssitant : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "INSERT INTO assRegTbl(uName,pWd,uType,fname,cNumber,eMail) VALUES ('" + utxt.Text.ToString() + "','" + ptxt.Text.ToString() + "','" + uttxt.Text.ToString() + "','" + ftxt.Text.ToString() + "','" + ctxt.Text + "','" + etxt.Text.ToString() + "')";
        SqlCommand cmd = new SqlCommand(str, con);

        string str1 = "INSERT INTO loginTbl(userName,password,userType) VALUES ('" + utxt.Text.ToString() + "','" + ptxt.Text.ToString() + "','" + uttxt.Text.ToString() + "')";


        SqlCommand cmd1 = new SqlCommand(str1, con);

        con.Open();

        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();

        utxt.Text = "";
        ptxt.Text = "";
        uttxt.Text = "";
        ftxt.Text = "";
        ctxt.Text = "";
        etxt.Text = "";
        Label4.Text = "Register Successfully..";

        con.Close();
    }
}