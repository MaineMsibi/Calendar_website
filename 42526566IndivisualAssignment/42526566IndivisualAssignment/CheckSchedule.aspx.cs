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
    public partial class CheckSchedule : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter adapter;
       
        string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\42526566\Documents\42526566IndivisualAssignment\42526566IndivisualAssignment\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //making the error message invisable when  page loads
            lblMessage.Visible = false;
            try
            {
                //requesting cookie to be used
                HttpCookie _details = Request.Cookies["StudentDetail"];
                lblHeading.Text = "The following schedule will be sent to this email: " + _details["email"].ToString();
                conn = new SqlConnection(conString);
                conn.Open();
                string sql = "SELECT *FROM ScheduleBoard";

                command = new SqlCommand(sql, conn);
                adapter = new SqlDataAdapter();
                adapter.SelectCommand = command;
                //filling the Gridview
                DataSet ds = new DataSet();
                adapter.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();


                conn.Close();
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
        public void display()//method to update contents immediately after button is clicked
        {
            conn.Open();
            //sql for display
            string sql = "SELECT *FROM ScheduleBoard";

            command = new SqlCommand(sql, conn);
            adapter = new SqlDataAdapter();
            adapter.SelectCommand = command;
            //filling the Gridview
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();


            conn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
               
                //opening connection
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                //deleting session
                string sql = $"DELETE FROM ScheduleBoard WHERE Session_ID = {txtSession.Text}";
                command = new SqlCommand(sql, conn);
                adapter = new SqlDataAdapter();
                adapter.DeleteCommand = command;
                adapter.DeleteCommand.ExecuteNonQuery();

                conn.Close();
                display();
                lblMessage.Text = "Session deleted";
                //clear textbox
                txtSession.Text = "";
            }
            catch(Exception ex)
            {
                //error message if exception caught
                lblMessage.Text = ex.Message;
            }
        }
        protected void btnUpDate_Click1(object sender, EventArgs e)
        {
            try
            {
                
                //updating accoring to selection
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                string sql = $"UPDATE ScheduleBoard SET Duration ={Convert.ToInt32(txtDuration.Text)} WHERE ModuleCode ='{txtModuleCode.Text}'";
                command = new SqlCommand(sql, conn);
                adapter = new SqlDataAdapter();
                adapter.UpdateCommand = command;
                adapter.UpdateCommand.ExecuteNonQuery();
                conn.Close();
                display();
                lblMessage.Text = "Duration updated";
                //clear textboxes
                txtModuleCode.Text = "";
                txtDuration.Text="";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }
    }
}