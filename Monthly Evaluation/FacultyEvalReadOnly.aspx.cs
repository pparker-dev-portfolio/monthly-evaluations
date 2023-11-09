using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class FacultyEvalReadOnly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Read the cookie from Request.
                HttpCookie myCookie = Request.Cookies["FacultyRepsonse"];
                if (myCookie == null)
                {
                    //No cookie found or cookie expired.
                    //Handle the situation here, Redirect the user or simply return;
                }

                //ok - cookie is found.
                //Gracefully check if the cookie has the key-value as expected.
                if (!string.IsNullOrEmpty(myCookie.Values["q1"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q2"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q3"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q4"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q5"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q6"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q7"]))
                {
                    RadioButtonList1.SelectedValue = myCookie.Values["q1"].ToString();
                    RadioButtonList2.SelectedValue = myCookie.Values["q2"].ToString();
                    RadioButtonList3.SelectedValue = myCookie.Values["q3"].ToString();
                    txta1.InnerText = myCookie.Values["q4"].ToString();
                    txtHours.Text = myCookie.Values["q5"].ToString();
                    txtNumPO.Text = myCookie.Values["q6"].ToString();
                    RBLPassFail.SelectedValue = myCookie.Values["q7"].ToString();
                }
            }
        }

        protected void btnSubmitFacultyEval_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyEval_Landing.aspx");
        }
    }
}