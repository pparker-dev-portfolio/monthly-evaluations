using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Capstone_1_Monthly_Evaluation
{
    public partial class StudentEval_LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int FormSubmissionValue = Convert.ToInt32(Session["SubmittedValue"]);
            if (FormSubmissionValue > 0)
            {
                btnEditEval.Enabled = true;
                btnEditEval.Visible = true;

                btnViewEval.Enabled = true;
                btnViewEval.Visible = true;

                btnContinueEval.Visible = false;
            }

            if (!IsPostBack)
            {
                
            }
        }

        protected void btnContinueEval_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentEvalPage.aspx");
        }

        protected void btnEditEval_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentEvalPage.aspx");
        }

        protected void btnViewEval_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentEvalReadOnly.aspx");
        }
    }
}