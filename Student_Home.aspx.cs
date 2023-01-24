﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Attendance_System
{
    public partial class Student_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["SID"]==null && Session["StudentEmail"]==null)
            {
                Response.Redirect("StudentLogin.aspx");
            }
           else
            {
                Label1.Text = "Welcome" +" " + Session["StudentEmail"] + "";
            }
        }
    }
}