using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class index : System.Web.UI.Page
    {
        //props
        private Dictionary<string, string> roles = new Dictionary<string, string>();

        //methods
        protected void Page_Load(object sender, EventArgs e)
        {
            //fetch roles from _login_role
            SqlConnection connection = new SqlConnection(GlobalStrings.connectionString);
            SqlCommand command = new SqlCommand("SELECT role FROM _login_role;", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                roles.Add(reader["role"].ToString(), reader["role"].ToString());
            }
            connection.Close();
        }

        protected void _btn_student_Click(object sender, EventArgs e)
        {
            string url = string.Format("login.aspx?role={0}", roles["student"]);
            Response.Redirect(url);
        }

        protected void _btn_recruiter_Click(object sender, EventArgs e)
        {
            string url = string.Format("login.aspx?role={0}", roles["recruiter"]);
            Response.Redirect(url);
        }

        protected void _btn_admin_Click(object sender, EventArgs e)
        {
            string url = string.Format("login.aspx?role={0}", roles["admin"]);
            Response.Redirect(url);
        }
    }
}