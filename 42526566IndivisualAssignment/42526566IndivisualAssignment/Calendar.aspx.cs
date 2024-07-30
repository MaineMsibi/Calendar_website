using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace _42526566IndivisualAssignment
{
    public partial class Calendar : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter adapter;
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\42526566\Documents\42526566IndivisualAssignment\42526566IndivisualAssignment\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //requestion cookies to be used 
                conn = new SqlConnection(conString);
                HttpCookie _details = Request.Cookies["StudentDetail"];
                HttpCookie _semester = Request.Cookies["Selection"];
              


                //checking if the cookies exist
                if (_semester["semester"] != null && _details["username"]!=null)
                {
                    lblHeading.Text = " Welcome " + _details["username"] + ", below are your exam dates";
                  
                }
               
                if(_semester["semester"].ToString() == "1st Semester")
                {
                    // these are exam dates that will appeare according to user selection when the page loads
                    DateTime module1 = new DateTime(2023, 06, 06);
                    Calendar1.VisibleDate = module1;
                    lblModule1.Text = "CMPG 211 " + module1.ToString("yyyy/MM/dd") + " at 09:00, venue PG - G4 -201";
                    Calendar1.SelectedDates.Add(module1);

                    DateTime module2 = new DateTime(2023, 06, 26);
                    Calendar1.VisibleDate = module2;
                    lblModule2.Text = "CMPG 212 " + module2.ToString("yyyy/MM/dd") + " at 09:00, venue PG - G4 -201";
                    Calendar1.SelectedDates.Add(module2);

                    DateTime module3 = new DateTime(2023, 06, 13);
                    Calendar1.VisibleDate = module3;
                    lblModule3.Text = "CMPG 213 " + module3.ToString("yyyy/MM/dd") + " at 14:00, venue PG - E5 -B02";
                    Calendar1.SelectedDates.Add(module3);

                    DateTime module4 = new DateTime(2023, 06, 10);
                    Calendar1.VisibleDate = module4;
                    lblModule4.Text = "CMPG 215 " + module4.ToString("yyyy/MM/dd") + " at 09:00, venue PG - G20-101";
                    Calendar1.SelectedDates.Add(module4);

                    lblModule5.Visible = false;
                    lblModule6.Visible = false;

                }
                if (_semester["semester"].ToString() == "2nd Semester")
                {
                    // these are exam dates that will appeare according to user selection when the page loads
                    DateTime module1 = new DateTime(2023, 11, 06);
                    Calendar1.VisibleDate = module1;
                    lblModule1.Text = "MTHS 225"+module1.ToString("yyyy/MM/dd") + " at 12:00, venue PG - E3 - G20 - 101";
                    Calendar1.SelectedDates.Add(module1);

                    DateTime module2 = new DateTime(2023, 11, 15);
                    Calendar1.VisibleDate = module2;
                    lblModule2.Text = "CMPG 221" + module2.ToString("yyyy/MM/dd") + "at 14:00, venue PG - G4 - 201";
                    Calendar1.SelectedDates.Add(module2);

                    DateTime module3 = new DateTime(2023, 11, 20);
                    Calendar1.VisibleDate = module3;
                    lblModule3.Text = "CMPG 223" + module3.ToString("yyyy/MM/dd") + "at 09:00, venue PG - G4 - 201";
                    Calendar1.SelectedDates.Add(module3);

                    DateTime module4 = new DateTime(2023, 11, 10);
                    Calendar1.VisibleDate = module4;
                    lblModule4.Text = "CMPG 222" + module4.ToString("yyyy/MM/dd") + " at 09:00, venue PG - G4 - 201";
                    Calendar1.SelectedDates.Add(module4);


                    DateTime module5 = new DateTime(2023, 11, 23);
                    Calendar1.VisibleDate = module5;
                    lblModule5.Text = "BMAN 223" + module5.ToString("yyyy/MM/dd") + " at 16:00, venue PG - E8 - G01";
                    Calendar1.SelectedDates.Add(module5);


                    DateTime module6 = new DateTime(2023, 11, 18);
                    Calendar1.VisibleDate = module6;
                    lblModule6.Text = "WVNS 221" + module6.ToString("yyyy/MM/dd") + " at 09:00, venue PG - E8 - G41";
                    Calendar1.SelectedDates.Add(module6);


                }
                
            }
            catch(Exception ex)
            {
                //error message
                lblMessage.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //requesting cookie to be used
                HttpCookie _details = Request.Cookies["StudentDetail"];
                conn.Open();
                string sql = $"INSERT INTO ScheduleBoard VALUES('{DropDownListCode.Text}','{txtDate.Text}',{txtDuration.Text},'{txtChapter.Text}')";

                command = new SqlCommand(sql, conn);
                adapter = new SqlDataAdapter();
                adapter.InsertCommand = command;
                adapter.InsertCommand.ExecuteNonQuery();
                //displaying message
                lblMessage.Text = _details["username"] + ", you have succuessfully inserted a session into your timetable";

                conn.Close();
                //clear textboes after data is stored
                txtDate.Text = "";
                txtDuration.Text = "";
                txtChapter.Text = "";

            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}