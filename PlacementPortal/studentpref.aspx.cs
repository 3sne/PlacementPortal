using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class WebForm6 : System.Web.UI.Page
    {
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
        Student activeUser;

        protected void Page_Load(object sender, EventArgs e)
        {
            activeUser = (Student)Session["active_user"];
        }


        protected void Unnamed_Click2(object sender, EventArgs e)
        {
            Session["active_theme"] = ddl.SelectedValue.ToString();
            SqlConnection conn = new SqlConnection(GlobalStrings.connectionString);
            SqlCommand c = new SqlCommand();
            c.Connection = conn;
            c.CommandText = "UPDATE student_preferences SET student_id=@student_id, theme=@theme WHERE student_id=@student_id";
            c.Parameters.AddWithValue("@student_id", activeUser.StudentId);
            c.Parameters.AddWithValue("@theme", ddl.SelectedValue.ToString());
            conn.Open();
            int count3 = c.ExecuteNonQuery();
            conn.Close();
        }
    }
}