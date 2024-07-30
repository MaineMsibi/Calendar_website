using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _42526566IndivisualAssignment
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // makes the lable not visible when the web page loads
            lblMessage.Visible = false;
        }

        protected void btnCreateSchedule_Click(object sender, EventArgs e)
        {
            //creating the cookies 
            HttpCookie _details= new HttpCookie("StudentDetail");
            HttpCookie _semester = new HttpCookie("Selection");
            //the user input into the cookie
            _details["username"] = txtUsername.Text;
            _details["email"] = txtEmail.Text;

           
            //make a persistent cookie
            _details.Expires = DateTime.Now.AddDays(1);
            //making the cookie available to be used
            Response.Cookies.Add(_semester);
            Response.Cookies.Add(_details);
            if (rdb1.Checked)
            {
                //Create a session to store the choosen selected
                //stores session in a cookie
                Session["Semester"] = "1st Semester";
                _semester["semester"] = Session["Semester"].ToString();
            }
            else if (rdb2.Checked)
            {

                Session["Semester"] = "2nd Semester";
                _semester["semester"] = Session["Semester"].ToString();
            }
            else
            {

                Session["Semester"] = "";

                lblMessage.Text = "Please select a semester";

            }
            //redirects to the second web page
            Response.Redirect("Calendar.aspx");
        }

       
    }
}