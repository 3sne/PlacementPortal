﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["active_theme"] != null)
            {
                Page.Theme = Session["active_theme"].ToString();
            } else
            { //default
                Page.Theme = "Theme1";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Student activeUser = (Student)Session["active_user"];
            sql_resume_list.SelectParameters["student_id"].DefaultValue = activeUser.StudentId; 
        }
    }
}