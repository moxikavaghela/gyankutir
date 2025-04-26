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

namespace gyankutir.admin
{
    public partial class View_Contact : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"] == null)
            {
                Response.Redirect("Admin_Login.aspx");
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
                BindGridView();
            } 
        }

        void BindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from contact_tbl";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label ItemId = (Label)row.FindControl("labelID");
            String Id = ItemId.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from contact_tbl where id =@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script> alert('Deleted Successfully')</script>");
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "Swal.fire('Deleted Successfully!', '', 'success');", true);

                //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Success!!\",\r\n  text: \"Deleted Successfully!\",\r\n  icon: \"success\"\r\n});", true);
                BindGridView();
            }
            else
            {
                Response.Write("<script> alert('Failed to delete')</script>");
                //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \"Opps!!\",\r\n  text: \"Failed to delete!\",\r\n  icon: \"error\"\r\n});", true);
            }
            con.Close();
        }
    }
}