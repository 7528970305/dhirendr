using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System
{
    public partial class Student1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Home.aspx");
        }

        protected void btnattendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Defaulter.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("StudentLogin.aspx");
        }
    }
}