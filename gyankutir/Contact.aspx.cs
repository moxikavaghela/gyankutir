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
    public partial class Contact : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetContact() 
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.ClearSelection();
            MessageTextBox.Text = "";
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spContact_Insert";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd .CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject",SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message",MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                //Response.Write("<script> alert('Your Data has been successfully submitted.')</script>");
                //Response.Write("<script>SuccessContact()</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact()", true);
                ResetContact();
            }
            else 
            {
                //Response.Write("<script> alert('Your Data has not been submitted.')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "FailContact()", true);
                //FailContact()
            }
            con.Close();
        }
    }
}