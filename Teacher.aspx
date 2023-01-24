<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Attendance_System.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image: url('Images/Background1.jpg'); width:1200px">
            <table align="center" style="width:391px;height:340px">
                  <tr>
               <td colspan="2" align="center">
                   <h2>Add Teacher</h2><br />
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
                   <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="197px" CausesValidation="true" placeholder="Enter name"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="last name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Name should be in characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
               </td>
           </tr>
                  <tr>
               <td>
                   <b>Email Id: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="197px" TextMode="Email"  placeholder="Enter Email id"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email id is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
               </td>
           </tr>
                  <tr>
               <td>
                   <b>Password: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="197px" TextMode="Password"  placeholder="Enter Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
                  <tr>
               <td colspan="2" align="center">
                 <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" Height="47px" Width="86px" Font-Size="Medium" OnClick="Button1_Click"/>
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
        </div
    </center>
</asp:Content>
