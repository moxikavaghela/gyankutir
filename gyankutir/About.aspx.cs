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
    public partial class About : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindFormView();
            }
        }

        void BindFormView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = @"SELECT 
                            (SELECT COUNT(*) FROM student_signup) AS StudentCount,
                            (SELECT COUNT(*) FROM tutor_signup) AS TutorCount,
                            (SELECT COUNT(*) FROM contact_tbl) AS FeedbackCount";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            try
            {
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    FormViewCounts.DataSource = dt;
                    FormViewCounts.DataBind();
                }
                else
                {
                    // Handle no data case
                    Response.Write("<script>console.log('No data returned from query');</script>");
                }
            }
            catch (Exception ex)
            {
                // Log the error
                Response.Write("<script>console.error('Database error: " + ex.Message + "');</script>");
            }
        }
    }
}