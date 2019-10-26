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
    public partial class studenthome : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
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
            if (activeUser.Gender == "Male") _avatar_ph.Src = "assets/img/avatar-1.png";
            else if (activeUser.Gender == "Female") _avatar_ph.Src = "assets/img/avatar-2.png";
            _name_ph.InnerText = string.Format("{0} {1}", activeUser.FirstName, activeUser.LastName);
            _brsec_ph.InnerText = string.Format("{0}-{1} | {2} | {3}", activeUser.Semester, activeUser.Section, activeUser.Course, activeUser.Branch);
        }
    }
}