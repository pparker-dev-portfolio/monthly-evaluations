using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminFacultyEvaluations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPublish1_Click(object sender, EventArgs e)
        {
            btnPublish1.Visible = false;
            btnUnpublish1.Visible = true;
            lblPublishStatus.Text = "Published";
        }

        protected void btnUnpublish1_Click(object sender, EventArgs e)
        {
            btnPublish1.Visible = true;
            btnUnpublish1.Visible = false;
            lblPublishStatus.Text = "Not Published";
        }

        protected void btnDelete1_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];

            if (confirmValue == "Yes")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('File Has Been Sucessfully Deleted')", true);
                lblFileName1.Text = "This File No Longer Exists";
                lblPublishStatus.Text = "Deleted";
                btnUnpublish1.Visible = false;
                btnPublish1.Visible = false;
                btnDelete1.Visible = false;
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('File Deletion Has Been Canceled')", true);
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            
        }
    }
}