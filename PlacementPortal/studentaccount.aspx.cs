using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["active_user"] == null)
            {
                Response.Redirect("index.aspx");
                return;
            }
            Student activeUser = (Student)Session["active_user"];
            Page.Title = string.Format("{0}'s Account", activeUser.FirstName);
//            SqlDataSource1.SelectParameters["student_id"].DefaultValue = activeUser.StudentId;
        }
    }
}