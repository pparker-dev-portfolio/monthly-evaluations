using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class FacultyEvalSubmit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Session["FalSubmittedValue"] = 1;
            Response.Redirect("FacultyEval_Landing.aspx");
        }
    }
}