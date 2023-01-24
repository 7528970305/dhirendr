<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="Attendance_System.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image: url('Images/Background1.jpg'); width:1200px">
       <table align="center" style="width:391px;height:340px">
           <tr>
               <td colspan="2" align="center">
                   <h2>Add Subject</h2><br />
               </td>
           </tr>
           <tr>
               <td>
                   <b>Course: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="197px">

                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td>
                   <b>Year: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true"  Height="40px" Width="197px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                       <asp:ListItem Value="0">select year</asp:ListItem>
                        <asp:ListItem Value="1">first year</asp:ListItem>
                        <asp:ListItem Value="2">Second year</asp:ListItem>
                        <asp:ListItem Value="3">Third year</asp:ListItem>

                   </asp:DropDownList>
               </td>
           </tr>>
           <tr>
               <td>
                   <b>Semester: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Height="40px" Width="197px">
                       <asp:ListItem Value="0">select Semester</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td>
                   <b>Subject: &nbsp; &nbsp; &nbsp; &nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="41px" CausesValidation="true" placeholder="Select Name"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Enter Subject name"></asp:RequiredFieldValidator>
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
               <td colspan="2" align="center">
                   <asp:GridView ID="GridView1" runat="server">

                   </asp:GridView>
               </td>
           </tr>
           </table>
          
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       </div>
    </center>
</asp:Content>
