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
        private string labelForUsername;
        private string labelForRegistrationUrge;
        private string btnData;

        protected void Page_Load(object sender, EventArgs e)
        {
            //extract role. if no role found, redirect to home page
            role = Request.QueryString["role"].ToString();
            if (role == "student")
            {
                labelForUsername = "Student ID";
                btnData = "Login as Student";
                labelForRegistrationUrge = "Looking for a job? Kickstart your career, register now!";
            }
            else if (role == "recruiter")
            {
                labelForUsername = "Recruiter ID";
                btnData = "Login as Recruiter";
                labelForRegistrationUrge = "Looking for new talent for your company? Register now!";
            }
            else if (role == "admin")
            {
                labelForUsername = "Administrator ID";
                btnData = "Login as Admin";
                labelForRegistrationUrge = "";
                _btn_register.Visible = false;
            } else
            {
                Response.Redirect("index.aspx");
            }
            _lbl_username.Text = labelForUsername;
            _lbl_password.Text = "Password";
            _btn_login.Text = btnData;
            _lbl_register_urge.Text = labelForRegistrationUrge;
        }

        protected void _btn_goback_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}