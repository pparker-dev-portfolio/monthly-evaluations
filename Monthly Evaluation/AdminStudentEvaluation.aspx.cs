using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class AdminStudentEvaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DownloadTemplate_Click(object sender, EventArgs e)
        {
            using (var client = new WebClient())
            {
                client.DownloadFile("", "Monthly-Evaluation-Template.xlsx");
            }
        }
    }
}