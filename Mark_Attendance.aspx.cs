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
    public partial class Mark_Attendance : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["scn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DrpCourse();
                DateTime now = DateTime.Now;
                label4.Text = "Taday's Date: " + now;
                if (Session["TUserId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        private void DrpCourse()
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand($"select * from Course", con);
            con.Open();
            DropDownList1.DataSource = cmd.ExecuteReader();
            DropDownList1.DataTextField = "CourseName";
            DropDownList1.DataValueField = "CID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Course");
            con.Close();

        }
        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            int CourseId = Convert.ToInt32(DropDownList2.SelectedValue);
            string year = DropDownList2.SelectedItem.Text;
            string sem = DropDownList5.SelectedItem.Text;
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand($"select * from Subject where CID='{CourseId}' and Year='{year}' and Sem='{sem}'", con);
            con.Open();
            DropDownList3.DataSource = cmd.ExecuteReader();
            DropDownList3.DataTextField = "SubjectName";
            DropDownList3.DataValueField = "SID";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "Select Subject");
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year" && DropDownList5.SelectedValue == "Select Semester" && DropDownList3.SelectedValue == "Select Subject")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList3.SelectedValue == "Select Subject")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList5.SelectedValue == "Select Semester")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList4.SelectedValue == "Select")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course" && DropDownList2.SelectedValue == "Select Year")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList1.SelectedValue == "Select Course" && DropDownList5.SelectedValue == "Select Semester")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList4.SelectedValue == "Select Course" && DropDownList4.SelectedValue == "Select")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList4.SelectedValue == "Select Course" && DropDownList3.SelectedValue == "Select Subject")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year" && DropDownList3.SelectedValue == "Select Subject")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year" && DropDownList4.SelectedValue == "Select")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList2.SelectedValue == "Select Year" && DropDownList5.SelectedValue == "Select Semester")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList5.SelectedValue == "Select Semester" && DropDownList4.SelectedValue == "Select")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else if (DropDownList5.SelectedValue == "Select Semester" && DropDownList3.SelectedValue == "Select Subject")
            {
                label1.Text = "Please select All field";
                label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SqlConnection con = new SqlConnection(str);
                SqlDataAdapter sda = new SqlDataAdapter($"select STID,Roll as RollNo,SName as StudentName from Student where Course='{DropDownList1.SelectedItem.Text}' and Year='{DropDownList2.SelectedItem.Text}' and Sem='{DropDownList5.SelectedItem.Text}'", con);
                con.Open();
                DataSet ds = new DataSet();
                sda.Fill(ds,"Student");
                GridView1.DataSource = ds;
                GridView1.DataBind(); 
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach(GridViewRow row in GridView1.Rows)
            {
                int Roll_No = Convert.ToInt32(row.Cells[2].Text);
                string Stud_Name = row.Cells[3].Text;
                int Stud_ID =Convert.ToInt32(row.Cells[1].Text);
                RadioButton rb1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                RadioButton rb2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
                int status;
                if(rb1.Checked)
                {
                    status = 1;
                }
                else
                {
                    status = 0;
                }
                string course = DropDownList1.SelectedItem.Text;
                string year = DropDownList2.SelectedItem.Text;
                string subject = DropDownList3.SelectedItem.Text;
                int Total_Lect = Int32.Parse(DropDownList4.SelectedItem.Text);
                int TLecture = (Total_Lect + status);
                String sem =DropDownList5.SelectedItem.Text;
                DateTime date = DateTime.Now;

                SqlConnection con2 = new SqlConnection(str);
                con2.Open();
                SqlCommand cmd = new SqlCommand($"insert into StudentAttendance(STID,StudentName,Course,Year,Subject,Roll,Status,Date,Lecture,Sem) values(@1,@2,@3,@4,@5,@6,@7,@8,@9,@10)", con2);
                cmd.Parameters.AddWithValue("@1", Stud_ID);
                cmd.Parameters.AddWithValue("@2", Stud_Name);
                cmd.Parameters.AddWithValue("@3", course);
                cmd.Parameters.AddWithValue("@4", year);
                cmd.Parameters.AddWithValue("@5", subject); 
                cmd.Parameters.AddWithValue("@6", Roll_No);
                cmd.Parameters.AddWithValue("@7", status);
                cmd.Parameters.AddWithValue("@8", date);
                cmd.Parameters.AddWithValue("@9", TLecture);
                cmd.Parameters.AddWithValue("@10", sem);
                cmd.ExecuteNonQuery();
                con2.Close();
                label3.Text = "Attendance Saved Successfully";
                label3.ForeColor = System.Drawing.Color.Green;
            }
            if(Session["TeacherID"] !=null)
            {
                string course = DropDownList1.SelectedItem.Text;
                string year = DropDownList2.SelectedItem.Text;
                string subject = DropDownList3.SelectedItem.Text;
                int Total_Lect = Int32.Parse(DropDownList4.SelectedItem.Text);
                String sem = DropDownList5.SelectedItem.Text;
                DateTime date = DateTime.Now;

                SqlConnection con2 = new SqlConnection(str);
                con2.Open();
                SqlCommand cmd = new SqlCommand($"insert into T_Lecture(TID,TName,Date,L_Taken,Course,Year,Subject,Sem) values(@1,@2,@3,@4,@5,@6,@7,@8)", con2);
                cmd.Parameters.AddWithValue("@1",Session["TeacherID"]);
                cmd.Parameters.AddWithValue("@2", Session["TeacherName"]);
                cmd.Parameters.AddWithValue("@3", date);
                cmd.Parameters.AddWithValue("@4", Total_Lect);
                cmd.Parameters.AddWithValue("@5", course);
                cmd.Parameters.AddWithValue("@6", year);
                cmd.Parameters.AddWithValue("@7", subject);
                cmd.Parameters.AddWithValue("@8", sem);
                cmd.ExecuteNonQuery();
                con2.Close();
            }
        }
    }
}