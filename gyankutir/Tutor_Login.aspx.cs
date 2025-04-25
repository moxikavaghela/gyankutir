﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

namespace gyankutir
{
    public partial class Tutor_Login : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Tutor_LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", UsernameTxt.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                //Response.Write("<script> alert('Login Successfull')</script>");
                Session["tutor_username"] = UsernameTxt.Text;
                Response.Redirect("Tutor/Tutor_Index.aspx");
            }
            else
            {
                //Response.Write("<script> alert('Invalid username or password.')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Opps!!\",\r\n  text: \"Please Enter valid credentials!\",\r\n  icon: \"error\"\r\n});", true);
            }
            con.Close();
        }
    }
}