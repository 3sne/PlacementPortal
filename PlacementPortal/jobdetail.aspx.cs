﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
        private bool alreadyRegistered = false;

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

            if (Session["active_user"] == null)
            {
                Response.Redirect("index.aspx");
                return;
            }
            Student activeUser = (Student)Session["active_user"];
            _lbl_regstatus.Visible = false;

            // if registered already, update badge accordingly/
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "SELECT COUNT(*) FROM data_job_registration WHERE student_id=@student_id AND job_id=@job_id";
            command.Parameters.AddWithValue("@student_id", activeUser.StudentId);
            command.Parameters.AddWithValue("@job_id", Request.QueryString["job_id"].ToString());
            connection.Open();
            Int32 count = (Int32)command.ExecuteScalar();
            connection.Close();
            string baseClass = "ml-3 badge badge-pill ";
            if (count != 1)
            {
                alreadyRegistered = false;
                _badge_registration.Attributes["class"] = baseClass + "badge-warning";
                _badge_registration.InnerText = "Not Registered";
            } else
            {
                alreadyRegistered = true;
                _badge_registration.Attributes["class"] = baseClass + "badge-success";
                _badge_registration.InnerText = "Registered";
            }

            if (IsPostBack) return;
            //populate drop down list
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "SELECT data_student_resume.resume_name as c, data_student_resume.resume_id as rid FROM data_student_resume INNER JOIN student_account ON data_student_resume.student_id = student_account.student_id WHERE data_student_resume.student_id=@student_id";
            cmd.Parameters.AddWithValue("@student_id", activeUser.StudentId);
            connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                ddl.Items.Add(new ListItem(rdr["c"].ToString(), rdr["rid"].ToString()));
            }
            rdr.Close();
            connection.Close();
        }

        protected void _btn_register_Click(object sender, EventArgs e)
        {
            string baseClass = "alert ";
            //check if registered already before.
            if (alreadyRegistered == true)
            {
                _lbl_regstatus.Text = "Already registered!";
                _lbl_regstatus.CssClass = baseClass + "alert-warning";
                _lbl_regstatus.Visible = true;
                return;
            }

            //Check if registration date has passed.
            SqlCommand command1 = new SqlCommand();
            command1.Connection = connection;
            command1.CommandText = "SELECT registration_deadline FROM data_job_list WHERE job_id=@job_id";
            command1.Parameters.AddWithValue("@job_id", Request.QueryString["job_id"].ToString());
            connection.Open();
            SqlDataReader rdr = command1.ExecuteReader();
            rdr.Read();
            DateTime deadline = Convert.ToDateTime(rdr["registration_deadline"]);
            if (deadline < DateTime.Now)
            {
                _lbl_regstatus.Text = "You missed the registration date :(";
                _lbl_regstatus.CssClass = baseClass + "alert-danger";
                _lbl_regstatus.Visible = true;
                return;
            }
            connection.Close();

            //if not, attempt and update badge
            Student activeUser = (Student)Session["active_user"];
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "INSERT INTO data_job_registration(student_id, job_id, resume_id) VALUES(@student_id , @job_id, @resume_id)";
            command.Parameters.AddWithValue("@student_id", activeUser.StudentId);
            command.Parameters.AddWithValue("@job_id", Request.QueryString["job_id"].ToString());
            if (ddl.SelectedItem == null)
            {
                command.Parameters.AddWithValue("@resume_id", "");
            } else
            {
                command.Parameters.AddWithValue("@resume_id", ddl.SelectedValue);
            }
            connection.Open();
            Int32 count = (Int32)command.ExecuteNonQuery();
            connection.Close();

            if (count != 1)
            {
                _lbl_regstatus.Text = "Something went wrong :(";
                _lbl_regstatus.CssClass = baseClass + "alert-failure";
            } else
            {
                _lbl_regstatus.Text = "Successfully registered!";
                _lbl_regstatus.CssClass = baseClass + "alert-success";
                alreadyRegistered = true;
                _badge_registration.Attributes["class"] = "ml-3 badge badge-pill badge-success";
                _badge_registration.InnerText = "Registered";
            }
            _lbl_regstatus.Visible = true;
        }
    }
}