using System;
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
    public partial class Student_Signup : System.Web.UI.Page

    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        void ResetContents()
        {
            // Reset the textboxes
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            AgeTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            SubjectTextBox.Text = "";
            ContactTextBox.Text = "";
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";

            // Clear dropdown selections
            GenderDropDownList.ClearSelection();
            GoingToDropDownList.ClearSelection();
            TutionTypeDropDownList.ClearSelection();
            TutorPreferDropDownList.ClearSelection();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StudentSignupButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "INSERT INTO student_signup (name, fname, surname, gender, age, country, city, address, standard, goingto, subject, contactno, tutiontype, tutorprefer, username, password) VALUES (@name, @fname, @surname, @gender, @age, @country, @city, @address, @standard, @goingto, @subject, @contactno, @tutiontype, @tutorprefer, @username, @password);";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@fname", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@goingto", GoingToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@tutiontype", TutionTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tutorprefer", TutorPreferDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    //Response.Write("<script>alert('Registered successfully')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"YEAYY!!\",\r\n  text: \"Now you are our Valuable Member!\",\r\n  icon: \"success\"\r\n});", true);
                    ResetContents();
                }
                else
                {
                    //Response.Write("<script>alert('Registration unsuccessfull...try another username')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Opps!!\",\r\n  text: \"Registration Failed!\",\r\n  icon: \"error\"\r\n});", true);
                }
            }
            catch(SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({ title: 'Opps!!', text: 'Registration Failed " + UsernameTextBox.Text + " already exists', icon: 'error' });", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Sorry!!\",\r\n  text: \"We are facing server issues...\",\r\n  icon: \"error\"\r\n});", true);
                }
            }

            finally 
            {
                con.Close();
            }
        }    

    }
}