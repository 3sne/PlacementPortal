using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementPortal
{
    public partial class resume : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["active_user"] == null)
            {
                Response.Redirect("index.aspx");
                return;
            }

            if (Session["active_theme"] != null)
            {
                Page.Theme = Session["active_theme"].ToString();
            }
            else
            { //default
                Page.Theme = "Theme1";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "View Resume";
        }
    }
}