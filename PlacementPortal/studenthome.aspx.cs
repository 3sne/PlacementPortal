using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class StudentHome : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["active_theme"] != null)
            {
                Page.Theme = (string)Session["active_theme"];
            } else
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

            //fetch latest data about student from the server
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = string.Format("SELECT * FROM {0} WHERE student_id=@student_id", GlobalStrings.tStudentAccount);
            command.Parameters.AddWithValue("@student_id", activeUser.StudentId);
            DataSet ds = new DataSet();
            SqlDataAdapter adap = new SqlDataAdapter(command);
            connection.Open();
            adap.Fill(ds, "local_student_info");
            connection.Close();
            foreach (DataRow dr in ds.Tables["local_student_info"].Rows)
            {
                activeUser.FirstName = dr["first_name"].ToString();
                activeUser.LastName = dr["last_name"].ToString();
                activeUser.Gender = dr["gender"].ToString();
                activeUser.Email = dr["email"].ToString();
                activeUser.Course = dr["course"].ToString();
                activeUser.Branch = dr["branch"].ToString();
                activeUser.Semester = dr["semester"].ToString();
                activeUser.Section = dr["section"].ToString();
            }

            //update the UI
            _page_title.InnerText = string.Format("{0}'s Homepage", activeUser.FirstName);
            if (activeUser.Gender == "Male") _avatar_ph.Src = "assets/img/avatar-1.png";
            else if (activeUser.Gender == "Female") _avatar_ph.Src = "assets/img/avatar-2.png";
            _name_ph.InnerText = string.Format("{0} {1}", activeUser.FirstName, activeUser.LastName);
            _brsec_ph.InnerText = string.Format("{0}-{1} | {2} | {3}", activeUser.Semester, activeUser.Section, activeUser.Course, activeUser.Branch);


            //Same for current registration card.
            SqlCommand command2 = new SqlCommand();
            command2.Connection = connection;
            command2.CommandText = "SELECT recruiter_account.recruiter_name, data_job_list.job_id, data_job_list.position, data_job_list.offer_type FROM data_job_list INNER JOIN data_job_registration ON data_job_list.job_id = data_job_registration.job_id INNER JOIN recruiter_account ON data_job_list.recruiter_id = recruiter_account.recruiter_id INNER JOIN student_account ON data_job_registration.student_id = student_account.student_id WHERE student_account.student_id=@student_id";
            command2.Parameters.AddWithValue("@student_id", activeUser.StudentId);
            SqlDataAdapter adap2 = new SqlDataAdapter(command2);
            connection.Open();
            adap2.Fill(ds, "local_job_reg_info");
            connection.Close();
            foreach (DataRow dr in ds.Tables["local_job_reg_info"].Rows)
            {
                _currreg_ph.InnerHtml = string.Format("<li>{0} | {1}</li>", dr["recruiter_name"], dr["position"]);
            }
        }
    }
}