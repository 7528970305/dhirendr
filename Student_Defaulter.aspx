<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Student_Defaulter.aspx.cs" Inherits="Attendance_System.Student_Defaulter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
     <table align="center" style="width:386px">
           <tr>
               <td align="center">
                   <h3>select</h3><br />
               </td>
               <td align="center">
                   <input name="startDate" id="text1" class="date-picker" runat="server" value="" />
               </td>
           </tr>
           <tr>
               <td colspan="2" align="center">
                   <asp:Button ID="Button1" runat="server" Text="Select" Height="44px" Width="103px" Font-Size="Large" Font-Bold="true" OnClick="Button1_Click"/>
               </td>
           </tr>
           <tr>
               <td colspan="2" align="center">
                   <asp:Label ID="label1" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="#9900CC"></asp:Label>
               </td>
           </tr>
         <tr>
               <td colspan="2" align="center">
                   <asp:Label ID="label2" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="#9900CC"></asp:Label>
               </td>
           </tr>
         <tr>
               <td colspan="2" align="center">
                   <asp:Label ID="label3" runat="server" Font-Size="Large" Font-Bold="true" ForeColor="#9900CC"></asp:Label>
               </td>
           </tr>
       </table>
     </center>
</asp:Content>
