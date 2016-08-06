using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (!(String.IsNullOrEmpty(pswd.Text.Trim())))
            {
                pswd.Attributes["value"] = pswd.Text;

            }
            if (!(String.IsNullOrEmpty(cpswd.Text.Trim())))
            {
                cpswd.Attributes["value"] = cpswd.Text;
            }
        }
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

        string str = "INSERT INTO regTbl (fName,lName,gender,userName,password,rePassword,emailId,cNumber,dob,add1,add2,city,dist,state,pincode,eDetail,course) VALUES('" + fName.Text.ToString().Trim() + "','" + lName.Text.ToString().Trim() + "','" + gender.Text.ToString().Trim() + "','" + uName.Text.ToString().Trim() + "','" + pswd.Text.ToString().Trim() + "','" + cpswd.Text.ToString().Trim() + "','" + emailId.Text.ToString().Trim() + "','" + cNumber.Text + "','" + DOB.Text + "','" + add1.Text.ToString().Trim() + "','" + add2.Text.ToString().Trim() + "','" + city.Text.ToString().Trim() + "','" + district.Text.ToString().Trim() + "','" + state.Text.ToString().Trim() + "','" + pCode.Text + "','" + eDetails.Text.ToString().Trim() + "','" + sCource.SelectedItem.Text.ToString() + "')";

        SqlCommand cmd = new SqlCommand(str, con);

        con.Open();
        cmd.ExecuteNonQuery();

        fName.Text = "";
        lName.Text = "";
        gender.SelectedIndex = 0;
        uName.Text = "";
        pswd.Text = "";
        cpswd.Text = "";
        emailId.Text = "";
        cNumber.Text = "";
        DOB.Text = "";
        add1.Text = "";
        add2.Text = "";
        city.Text = "";
        district.Text = "";
        state.Text = "";
        pCode.Text = "";
        eDetails.SelectedIndex = 0;
        sCource.SelectedIndex = 0;
        con.Close();
        Response.Redirect("~/UploadImage.aspx");



        if (string.IsNullOrEmpty(fName.Text))
        {



        }

    }
    protected void uName_TextChanged(object sender, EventArgs e)
    {

        if (!string.IsNullOrEmpty(uName.Text))
        {
            con.Open();
            SqlCommand cm = new SqlCommand("select userName from regTbl where  username=@userName", con);
            cm.Parameters.AddWithValue("@userName", uName.Text);
            SqlDataReader dr = cm.ExecuteReader();

            if (dr.HasRows)
            {
                Label1.Text = "user is Exist....!Please Enter Other UserName";
                Label1.ForeColor = System.Drawing.Color.Red;
                uName.Text = "";
            }
            else
            {
                Label1.Text = "username is availible";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
        }
    }
}