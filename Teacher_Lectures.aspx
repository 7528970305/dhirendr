<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.Master" AutoEventWireup="true" CodeBehind="Teacher_Lectures.aspx.cs" Inherits="Attendance_System.Teacher_Lectures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
    <div style="background-image: url('Images/Background1.jpg'); width:1200px">
        <center>
        <table align="center" style="width:1200px; height:366px;">
             <tr align="center" style="width:1200px";>
               <td>
                   <b>Course:</b>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="115px">

                   </asp:DropDownList>
               </td>
                 &nbsp;
               <td>
                   <b>Year:</b>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true"  Height="40px" Width="125px" >
                       <asp:ListItem Value="0">select year</asp:ListItem>
                        <asp:ListItem Value="1">first year</asp:ListItem>
                        <asp:ListItem Value="2">Second year</asp:ListItem>
                        <asp:ListItem Value="3">Third year</asp:ListItem>

                   </asp:DropDownList>
               </td>
           
               <td>
                   <b>Semester: </b>
               </td>
               <td>
                   <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="true" Height="40px" Width="125px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                       <asp:ListItem Value="0">select Semester</asp:ListItem>
                       <asp:ListItem Value="1">Sem I</asp:ListItem>
                       <asp:ListItem Value="2">Sem II</asp:ListItem>
                       <asp:ListItem Value="3">Sem II</asp:ListItem>
                       <asp:ListItem Value="4">Sem IV</asp:ListItem>
                       <asp:ListItem Value="5">Sem V</asp:ListItem>
                       <asp:ListItem Value="6 ">Sem VI</asp:ListItem>
                   </asp:DropDownList>
               </td>
           
               <td>
                   <b>Subject: </b> 
               </td>
               <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Height="40px" Width="215px">
                   </asp:DropDownList>
               </td>
           
            <tr align="center" style="width:1200px;">
               
               <td colspan="10" align="center">
                   <b>Date:</b>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" placeholder="Select date"></asp:TextBox>
               </td>
           </tr>
            <tr>
               <td colspan="10" align="center">
                 <asp:Button ID="Button1" runat="server" Text="Select" Font-Bold="true" Height="40px" Width="92px" Font-Size="Medium" OnClick="Button1_Click"/>
               </td>
           </tr>
           <tr>
               <td colspan="10" align="center">
                    
                 <asp:Label ID="label1" runat="server" Text=""></asp:Label>
               </td>
           </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Such Records Found">
                     
                    </asp:GridView>
                </td>
            </tr>
            
        </table>
        </center>
    </div>
    </center>
</asp:Content>
