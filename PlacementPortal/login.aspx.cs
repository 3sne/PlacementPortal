using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class login : System.Web.UI.Page
    {
        private string role;
        private string labelData;
        private string btnData;

        protected void Page_Load(object sender, EventArgs e)
        {
            //extract role. if no role found, redirect to home page
            role = Request.QueryString["role"].ToString();
            if (role == "student")
            {
                labelData = "Student ID";
                btnData = "Login as Student";
            }
            else if (role == "recruiter")
            {
                labelData = "Recruiter ID";
                btnData = "Login as Student";
            }
            else if (role == "admin")
            {
                labelData = "Administrator ID";
                btnData = "Login as Admin";
            } else
            {
                Response.Redirect("index.aspx");
            }
            _lbl_username.Text = labelData;
            _lbl_password.Text = "Password";
            _btn_login.Text = btnData;
        }
    }
}