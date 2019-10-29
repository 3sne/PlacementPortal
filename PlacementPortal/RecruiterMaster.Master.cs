using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class RecruiterMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["active_recruiter"] == null)
            {
                Response.Redirect("index.aspx");
                return;
            }
        }

        protected void _btn_logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            if (Request.Cookies["pre_recruiter"] != null)
            {
                Response.Cookies["pre_recruiter"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("index.aspx");
        }
    }
}