using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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

        protected void next_1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "INSERT INTO student_account(student_id, first_name, last_name, gender, email, dob, course, branch, semester, section) VALUES(@student_id,@first_name,@last_name,@gender,@email,@dob,@course,@branch,@semester,@section)";
            command.Parameters.AddWithValue("@student_id", student_id.Text);
            command.Parameters.AddWithValue("@first_name", first_nameTextBox.Text);
            command.Parameters.AddWithValue("@last_name", last_nameTextBox.Text);
            command.Parameters.AddWithValue("@gender", gender.Text);
            command.Parameters.AddWithValue("@email", email.Text);
            command.Parameters.AddWithValue("@dob", dob.Text);
            command.Parameters.AddWithValue("@course", course.Text);
            command.Parameters.AddWithValue("@branch", branch.Text);
            command.Parameters.AddWithValue("@semester", semester.Text);
            command.Parameters.AddWithValue("@section", section.Text);
            connection.Open();
            int count = command.ExecuteNonQuery();
            connection.Close();

            bool wasSuccess = false;
            if(count == 1)
            {
                wasSuccess = true;
            }

            if (!wasSuccess)
            {
                Response.Redirect("studentregister.aspx");
                return;
            }
            SqlCommand command2 = new SqlCommand();
            command2.Connection = connection;
            command2.CommandText = "INSERT INTO auth_student(student_id, password) VALUES (@student_id, @password)";
            command2.Parameters.AddWithValue("@student_id", student_id.Text);
            command2.Parameters.AddWithValue("@password", pw_original.Text);
            connection.Open();
            int count2 = command2.ExecuteNonQuery();
            connection.Close();
            if(count2 != 1)
            {
                Response.Redirect("studentregister.aspx");
                return;
            } else
            {
                Student s = new Student();
                s.StudentId = student_id.Text;
                s.Theme = "Theme1";
                Session["active_user"] = s;
                Session["active_theme"] = "Theme1";
                SqlCommand c = new SqlCommand();
                c.Connection = connection;
                c.CommandText = "INSERT INTO student_preferences(student_id, theme) VALUES (@student_id, @theme)";
                c.Parameters.AddWithValue("@student_id", student_id.Text);
                c.Parameters.AddWithValue("@theme", "Theme1");
                connection.Open();
                int count3 = c.ExecuteNonQuery();
                connection.Close();

                SqlCommand command3 = new SqlCommand();
                command3.Connection = connection;
                command3.CommandText = "INSERT INTO student_info(student_id, phone_number) VALUES (@student_id, @ph)";
                command3.Parameters.AddWithValue("@student_id", student_id.Text);
                command3.Parameters.AddWithValue("@ph", phone_number.Text);
                connection.Open();
                int count4 = command3.ExecuteNonQuery();
                connection.Close();
                Response.Redirect("studenthome.aspx");
            }

        }
    }
}