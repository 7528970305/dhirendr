<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Attendance_System.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image: url('Images/Background1.jpg'); width:1200px">
            <table align="center" style="width:391px;height:340px">
                 <tr>
               <td colspan="2" align="center">
                   <h2>Add Student</h2><br />
               </td>
           </tr>
                  <tr>
               <td>
                   <b>First Name: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="197px" CausesValidation="true" placeholder="Enter name"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name should be in characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
               </td>
           </tr>
                  <tr>
               <td>
                   <b>Last Name: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="197px" CausesValidation="true" placeholder="Enter name"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="last name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Name should be in characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
               </td>
                  </tr>
                  <tr>
               <td>
                   <b>Roll No.: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="197px" CausesValidation="true" placeholder="Enter roll number" TextMode="Number"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Roll number is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid roll number" ForeColor="Red" ValidationExpression="^[0-9]{7}">*</asp:RegularExpressionValidator>
               </td>
                  </tr>
                <tr>
               <td>
                   <b>Email Id: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="197px" TextMode="Email"  placeholder="Enter Email id"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email id is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
               </td>
           </tr>
                <tr>
               <td>
                   <b>Contact No.: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="197px" CausesValidation="true" placeholder="Enter roll number" TextMode="Number"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Contact number is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Phone number" ForeColor="Red" ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
               </td>
                  </tr>
                <tr>
               <td>
                   <b>Password: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="197px" CausesValidation="true" placeholder="Enter password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
               </td>
                  </tr>
                 <tr>
                    <td><b>Course: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" Height="40px" Width="197"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select course" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td><b>Year: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Height="40px" Width="197" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                           <asp:ListItem Value="0">Select Year</asp:ListItem>
                           <asp:ListItem Value="1">First Year</asp:ListItem>
                           <asp:ListItem Value="2">Second Year</asp:ListItem>
                           <asp:ListItem Value="3">Third Year</asp:ListItem>
                       </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select of year" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Semester: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="197">
                           <asp:ListItem Value="0">Select semester</asp:ListItem>
                       </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select semester" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
               <td colspan="2" align="center">
                 <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" Height="47px" Width="86px" Font-Size="Medium" OnClick="Button1_Click" />
               </td>
           </tr>
                 <tr>
               <td colspan="2">
                 <asp:Label ID="label1" runat="server" Font-Bold="true"></asp:Label>
               </td>
           </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
           <tr>
               <td colspan="2" align="center">
                   <asp:GridView ID="GridView1" runat="server">

                   </asp:GridView>
               </td>
           </tr>
            </table>
        </div>
    </center>
</asp:Content>
