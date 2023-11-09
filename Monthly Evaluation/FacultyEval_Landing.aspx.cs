using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class FacultyEval_Landing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["FalSubmittedValue"]) == 1)
            {
                btnStart1.Visible = false;
                btnEdit.Visible = true;
                btnView1.Visible = true;
                lblStatus.Text = "Completed";
            }
            if (Convert.ToInt32(Session["FalInProgress"]) == -1)
            {
                btnStart1.Visible = false;
                btnEdit.Visible = false;
                btnView1.Visible = false;
                btnFinish1.Visible = true;
                lblStatus.Text = "In Progress";
            }

        }
        protected void btnSView1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentEvalReadOnly.aspx");
        }

        protected void btnFinish1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyEvalPage.aspx");
        }

        protected void btnView1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyEvalReadOnly.aspx");
        }

        protected void btnStart1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyEvalPage.aspx");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Session["FacultyEdit"] = 2;
            Response.Redirect("FacultyEvalPage.aspx");
        }
    }
}