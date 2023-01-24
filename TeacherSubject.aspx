<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TeacherSubject.aspx.cs" Inherits="Attendance_System.TeacherSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image: url('Images/Background1.jpg'); width:1200px">
            <table align="center" style="width:391px; height:340px;">
                <tr>
                    <td colspan="2" align="center">
                        <h2>Allocate Subject</h2><br />
                    </td>
                    
                </tr>
                <tr>
                    <td><b>Teacher: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="197"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select teacher name" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Course: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" Height="40px" Width="197"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select course" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select of year" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Semester: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true" Height="40px" Width="197" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                           <asp:ListItem Value="0">Select semester</asp:ListItem>
                       </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Select semester" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><b>Subject: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                       <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="true" Height="40px" Width="197" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Select subject" ForeColor="Red">*</asp:RequiredFieldValidator>
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
