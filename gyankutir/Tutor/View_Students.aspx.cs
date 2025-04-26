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

namespace gyankutir.Tutor
{
    public partial class View_Students : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx");
            }
            else
            {
                //string username = Session["admin_username"].ToString();
                ////Response.Write("<script> alert('Welcome " + username + "')</script>");
                ////Response.Write("<script>SuccessContact()</script>");
                //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact()", true);
            }

            if (!IsPostBack)
            {
                BindRepeater();
            }
        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            //string query = "select * from tutor_signup where name Like '%"+SearchText.Text+"%'";
            string query = "SELECT * FROM student_signup WHERE " +
                           "name LIKE '%" + SearchText.Text + "%' OR " +
                           "contactno LIKE '%" + SearchText.Text + "%' OR " +
                           "standard LIKE '%" + SearchText.Text + "%' OR " +
                           "age LIKE '%" + SearchText.Text + "%' OR " +
                           "goingto LIKE '%" + SearchText.Text + "%' OR " +
                           "subject LIKE '%" + SearchText.Text + "%' OR " +
                           "country LIKE '%" + SearchText.Text + "%' OR " +
                           "city LIKE '%" + SearchText.Text + "%' OR " +
                           "tutiontype LIKE '%" + SearchText.Text + "%' OR " +
                           "tutorprefer LIKE '%" + SearchText.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Records Found')</script>");
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }

        }
    }
}