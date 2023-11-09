using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class FacultyEvalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["FacultyEdit"]) == 2)
            {
                btnSave.Visible = false;
            }
            
            //create a cookie
            HttpCookie FacultyResponse = new HttpCookie("FacultyRepsonse");

            //Add key-values in the cookie
            FacultyResponse.Values.Add("q1", RadioButtonList1.SelectedValue);
            FacultyResponse.Values.Add("q2", RadioButtonList2.SelectedValue);
            FacultyResponse.Values.Add("q3", RadioButtonList3.SelectedValue);
            FacultyResponse.Values.Add("q4", txta1.InnerText);
            FacultyResponse.Values.Add("q5", txtHours.Text);
            FacultyResponse.Values.Add("q6", txtNumPO.Text);
            FacultyResponse.Values.Add("q7", RBLPassFail.SelectedValue);


            //Most important, write the cookie to client.
            Response.Cookies.Add(FacultyResponse);



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
            Response.Redirect("FacultyEvalSubmit.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["FalInProgress"] = -1;
            Response.Redirect("FacultyEval_Landing.aspx");
        }
    }
}