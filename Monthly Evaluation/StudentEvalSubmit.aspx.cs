using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Capstone_1_Monthly_Evaluation
{
    public partial class StudentEvalSubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentEval_LandingPage.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["SubmittedValue"] = 1;
            lblSubmitted.Visible = true;
            btnReturn.Visible = true;

            lblSubmittionVerification.Visible = false;
            btnSubmit.Visible = false;
            btnCancel.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session["SubmittedValue"] = 0;
            lblSubmitted.Visible = false;
            btnReturn.Visible = false;
        }
    }
}