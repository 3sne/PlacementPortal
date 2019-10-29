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
            Page.Title = string.Format("{0}'s Account", activeUser.FirstName);
            SqlDataSource1.SelectParameters["student_id"].DefaultValue = activeUser.StudentId;
            _sql_additional.SelectParameters["student_id"].DefaultValue = activeUser.StudentId;
        }

        protected void fv_student_info_DataBound(object sender, EventArgs e)
        {
            if (fv_student_info.CurrentMode == FormViewMode.Edit)
            {
                TextBox dobTextBox = (TextBox)fv_student_info.FindControl("dobTextBox");
                if (dobTextBox != null)
                {
                    DateTime date = Convert.ToDateTime(dobTextBox.Text);
                    dobTextBox.Text = string.Format("{0:MM/dd/yyyy}", date);
                }
            }

            if (fv_student_info.CurrentMode == FormViewMode.ReadOnly)
            {
                Label dobLabel = (Label)fv_student_info.FindControl("dobLabel");
                if (dobLabel != null)
                {
                    DateTime date = Convert.ToDateTime(dobLabel.Text);
                    dobLabel.Text = string.Format("{0:MM/dd/yyyy}", date);
                }
            }
        }
    }
}