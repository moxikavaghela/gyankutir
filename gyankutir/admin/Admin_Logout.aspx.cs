﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gyankutir.admin
{
    public partial class Admin_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_username"] != null)
            {
                Session.Abandon();
                //Session["admin_username"] = null;
                Response.Redirect("Admin_Login.aspx");
            }
    
        }
    }
}