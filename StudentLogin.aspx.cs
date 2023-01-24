using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["scn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter($"select * from Student where Email='{textbox1.Text}' and Password='{textbox2.Text}'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                int sid = Convert.ToInt32(dt.Rows[0][0]);
                Session["StudentEmail"] = textbox1.Text;
                Session["SID"] =sid ;
                Response.Redirect("Student_Home.aspx");
            }
            else
            {
                label1.ForeColor = System.Drawing.Color.Red;
                label1.Text = "Login Failed...";
            }
        }
    }
}