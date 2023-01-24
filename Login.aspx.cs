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
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["scn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter($"select * from Teacher where TUserid='{textbox1.Text}' and TPassword='{textbox2.Text}'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(textbox1.Text=="Admin" & textbox2.Text=="123")
            {
                Response.Redirect("Admin_Home.aspx");
            }
            else if(dt.Rows.Count==1)
            {
                Session["TeacherID"] = dt.Rows[0][0].ToString();
                Session["TeacherName"] = dt.Rows[0][1].ToString();
                Session["TUserid"] = textbox1.Text;
                Response.Redirect("Teacher_Home.aspx");
            }
            else
            {
                label1.ForeColor = System.Drawing.Color.Red;
                label1.Text = "Login Failed...";
            }
        }
    }
}