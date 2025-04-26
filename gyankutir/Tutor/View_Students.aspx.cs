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
    }
}