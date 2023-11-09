using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_1_Monthly_Evaluation
{
    public partial class StudentEvalPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //create a cookie
            HttpCookie StudentResponse = new HttpCookie("StudentRepsonse");

            //Add key-values in the cookie
            StudentResponse.Values.Add("q1", txtQ1.Text);
            StudentResponse.Values.Add("q2", txtQ2.Text);
            StudentResponse.Values.Add("q3", txtQ3.Text);
            StudentResponse.Values.Add("q4", txtQ4.Text);
            StudentResponse.Values.Add("q5", RadioButtonList1.SelectedValue);
            StudentResponse.Values.Add("q6", RadioButtonList2.SelectedValue);
            StudentResponse.Values.Add("q7", RadioButtonList3.SelectedValue);
            StudentResponse.Values.Add("q8", txta1.InnerText);


            //Most important, write the cookie to client.
            Response.Cookies.Add(StudentResponse);



            if (!IsPostBack)
            {
                //Read the cookie from Request.
                HttpCookie myCookie = Request.Cookies["StudentRepsonse"];
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
                    !string.IsNullOrEmpty(myCookie.Values["q7"]) ||
                    !string.IsNullOrEmpty(myCookie.Values["q8"]))
                {
                    txtQ1.Text = myCookie.Values["q1"].ToString();
                    txtQ2.Text = myCookie.Values["q2"].ToString();
                    txtQ3.Text = myCookie.Values["q3"].ToString();
                    txtQ4.Text = myCookie.Values["q4"].ToString();
                    RadioButtonList1.SelectedValue = myCookie.Values["q5"].ToString();
                    RadioButtonList2.SelectedValue = myCookie.Values["q6"].ToString();
                    RadioButtonList3.SelectedValue = myCookie.Values["q7"].ToString();
                    txta1.InnerText = myCookie.Values["q8"].ToString();
                }
            }
        }

        protected void btnStudentEvalSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentEvalSubmit.aspx");
        }
    }
}