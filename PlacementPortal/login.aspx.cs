using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class login : System.Web.UI.Page
    {
        private string role;
        private string roleCap;
        private string labelForUsername;
        private string labelForRegistrationUrge;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["active_theme"] != null)
            {
                Page.Theme = (string)Session["active_theme"];
            }
            else
            {
                Page.Theme = "Theme1";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //extract role. if no role found, redirect to home page
            role = Request.QueryString["role"].ToString();
            if (role == "student")
            {
                roleCap = "Student";
                labelForUsername = "Student ID";
                labelForRegistrationUrge = "Looking for a job? Kickstart your career, register now!";
            }
            else if (role == "recruiter")
            {
                roleCap = "Recruiter";
                labelForUsername = "Recruiter ID";
                labelForRegistrationUrge = "Looking for new talent for your company? Register now!";
            }
            else if (role == "admin")
            {
                roleCap = "Admin";
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

            _header.InnerText = "Continue as " + roleCap;

            _tb_username.Attributes["placeholder"] = labelForUsername;
            _tb_password.Attributes["placeholder"] = "Password";
            _lbl_register_urge.Text = labelForRegistrationUrge;

            if (role == "student" && Request.Cookies.Get("pre_student") != null)
            {
                HttpCookie coki = Request.Cookies.Get("pre_student");
                string sid = coki["_student_id"].ToString();
                string pw = coki["_student_pw"].ToString();
                string queryStudent = string.Format("SELECT COUNT(*) FROM {0} WHERE student_id=@student_id AND password=@password", GlobalStrings.tAuthStudent);
                SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandText = queryStudent;
                cmd.Parameters.AddWithValue("@student_id", sid);
                cmd.Parameters.AddWithValue("@password", pw);
                connection.Open();
                Int32 count = (Int32)cmd.ExecuteScalar();
                connection.Close();
                if (count != 1)
                {
                    return;
                }
                else
                {
                    Student s = new Student();
                    s.StudentId = sid;
                    Session["active_user"] = s;
                    Response.Redirect("studenthome.aspx");
                }
            }
        }

        protected void _btn_login_Click(object sender, EventArgs e)
        {
            //Grab inputs from front-end
            string username = _tb_username.Text.ToString();
            string password = _tb_password.Text.ToString();

            //Construct queries for different roles
            string queryStudent = string.Format("SELECT COUNT(*) FROM {0} WHERE student_id=@student_id AND password=@password", GlobalStrings.tAuthStudent);
            string queryRecruiter = string.Format("SELECT COUNT(*) FROM {0} WHERE recruiter_id=@recruiter_id AND password=@password", GlobalStrings.tAuthRecruiter);
            string queryAdmin = string.Format("SELECT COUNT(*) FROM {0} WHERE admin_id=@admin_id AND password=@password", GlobalStrings.tAuthAdmin);

            SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            if (role == "student")
            {
                command.CommandText = queryStudent;
                command.Parameters.AddWithValue("@student_id", username);
                command.Parameters.AddWithValue("@password", password);
            }
            else if (role == "recruiter")
            {
                command.CommandText = queryRecruiter;
                command.Parameters.AddWithValue("@recruiter_id", username);
                command.Parameters.AddWithValue("@password", password);
            }
            else if (role == "admin")
            {
                command.CommandText = queryAdmin;
                command.Parameters.AddWithValue("@admin_id", username);
                command.Parameters.AddWithValue("@password", password);
            }

            //Do Authentication by seeing number of queried rows. It should be 1.
            connection.Open();
            Int32 count = (Int32)command.ExecuteScalar();
            connection.Close();
            if (count != 1)
            { //Authentication failed.
                _tb_password.Text = "";

            }
            else
            { //Authenticated user; Create a Session and redirect the boyo.
                if (role == "student")
                {
                    Student s = new Student();
                    s.StudentId = username;
                    Session["active_user"] = s;
                    SqlCommand c = new SqlCommand();
                    c.Connection = connection;
                    c.CommandText = "SELECT theme FROM student_preferences WHERE student_id=@student_id";
                    c.Parameters.AddWithValue("@student_id", s.StudentId);
                    connection.Open();
                    SqlDataReader r = c.ExecuteReader();
                    r.Read();
                    if (r["theme"] != null)
                    {
                        s.Theme = r["theme"].ToString();
                    }
                    else
                    {
                        s.Theme = "Theme1";
                    }
                    r.Close();
                    connection.Close();
                    Session["active_theme"] = s.Theme;
                    if (_cb_remember_me.Checked == true)
                    {
                        //cookie create. remember him
                        HttpCookie coki = new HttpCookie("pre_student");
                        coki["_student_id"] = _tb_username.Text;
                        coki["_student_pw"] = _tb_password.Text;
                        Response.Cookies.Add(coki);
                    }
                    Response.Redirect("studenthome.aspx");
                }
                else if(role == "recruiter")
                {

                }
            }
        }

        protected void _btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentregister.aspx");
        }
    }
}