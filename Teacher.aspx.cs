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
    public partial class Teacher : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["scn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Showgrid();
            }
        }
        private void Showgrid()
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter($"select Tname as Name ,Tuserid as Email_Id from Teacher", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter($"select * from teacher where TUserId='{TextBox3.Text.ToString()}'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                label1.Text = "Enter email id is already existing.";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string fname = TextBox1.Text;
                string lname = TextBox2.Text;
                string fullname = fname + " "+lname;
                SqlConnection con2 = new SqlConnection(str);
                con2.Open();
                SqlCommand cmd = new SqlCommand($"insert into Teacher(TName,TUserId,Tpassword) values(@1,@2,@3)", con2);
                cmd.Parameters.AddWithValue("@1", fullname);
                cmd.Parameters.AddWithValue("@2", TextBox3.Text);
                cmd.Parameters.AddWithValue("@3", TextBox4.Text);
                
                cmd.ExecuteNonQuery();
                con2.Close();
                label1.Text = "Teacher added successfully";
                label1.ForeColor = System.Drawing.Color.Green;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                //clear();
            }
        }
    }
}