using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PlacementPortal
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            post_status.Visible = false;
        }

        protected void btn_post_Click(object sender, EventArgs e)
        {

            Recruiter rec = (Recruiter)Session["active_recruiter"];
            SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "INSERT INTO data_job_list VALUES (@jobid, @rid, @pos, @jd, @egpa, @ebranch, @ot, @comp, @dead)";
            command.Parameters.AddWithValue("@jobid", job_id.Text);
            command.Parameters.AddWithValue("@rid", rec.RecruiterId);
            command.Parameters.AddWithValue("@pos", position.Text);
            command.Parameters.AddWithValue("@jd", jd.Text);
            command.Parameters.AddWithValue("@egpa", egpa.Text);
            command.Parameters.AddWithValue("@ebranch", ebranch.Text);
            command.Parameters.AddWithValue("@ot", ddl_offer.SelectedItem.Text);
            command.Parameters.AddWithValue("@comp", compensation.Text);
            command.Parameters.AddWithValue("@dead", deadline.Text);

            connection.Open();
            int count = command.ExecuteNonQuery();
            connection.Close();

            post_status.Visible = true;
            if (count != 1)
            {
                post_status.CssClass = "alert alert-failure";
                post_status.Text = "Failed.";
            } else
            {
                post_status.CssClass = "alert alert-success";
                post_status.Text = "Posted!";
            }
        }
    }
}