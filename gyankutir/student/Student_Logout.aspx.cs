﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gyankutir.student
{
    public partial class Student_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student_username"] != null)
            {
                //Session.Abandon();
                Session["student_username"] = null;
                Response.Redirect("~/Student_Login.aspx");
            }

        }
    }
}