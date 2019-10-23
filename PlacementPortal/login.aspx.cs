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

        protected void Page_Load(object sender, EventArgs e)
        {
            //extract role. if no role found, redirect to home page
            role = Request.QueryString["role"].ToString();
            if (role == "student")
            {
                labelForUsername = "Student ID";
                labelForRegistrationUrge = "Looking for a job? Kickstart your career, register now!";
            }
            else if (role == "recruiter")
            {
                labelForUsername = "Recruiter ID";
                labelForRegistrationUrge = "Looking for new talent for your company? Register now!";
            }
            else if (role == "admin")
            {
                labelForUsername = "Administrator ID";
                labelForRegistrationUrge = "";
                _btn_register.Visible = false;
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            _lbl_username.Text = labelForUsername;
            _lbl_password.Text = "Password";
            _lbl_username.Visible = _lbl_password.Visible = false;

            _header.InnerText = "Continue as " + role;

            _tb_username.Attributes["placeholder"] = labelForUsername;
            _tb_password.Attributes["placeholder"] = "Password";
            _lbl_register_urge.Text = labelForRegistrationUrge;
        }
    }
}