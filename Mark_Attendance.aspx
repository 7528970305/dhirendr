<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.Master" AutoEventWireup="true" CodeBehind="Mark_Attendance.aspx.cs" Inherits="Attendance_System.Mark_Attendance" %>
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
                   <b>Total Lectures:</b>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="true" Height="40px" Width="125px">
                       <asp:ListItem >select</asp:ListItem>
                       <asp:ListItem >1</asp:ListItem>
                      <asp:ListItem >2</asp:ListItem>
                       <asp:ListItem >3</asp:ListItem>
                       <asp:ListItem >4</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
            <tr>
               <td colspan="10" align="center">
                 <asp:Button ID="Button1" runat="server" Text="Select" Font-Bold="true" Height="40px" Width="92px" Font-Size="Medium" OnClick="Button1_Click"/>
               </td>
           </tr>
           <tr>
               <td colspan="10" align="center">
                    <asp:Label ID="label4" runat="server" Font-Bold="true" ForeColor="#9900ff"></asp:Label>
                 <asp:Label ID="label1" runat="server" Text=""></asp:Label>
               </td>
           </tr>
            <tr>
                <td colspan="10" align="center">
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Mark Attendance">
                                <ItemTemplate>
                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="attend" Text="Present" />
                                    &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="attend" Text="Absent" />
                                    &nbsp;
                                </ItemTemplate>
                                <FooterStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="No such Records found"></asp:Label>
                        </EmptyDataTemplate>
                       
                    </asp:GridView>
                </td>
            </tr>
            <tr>
               <td colspan="10" align="center">
                 <asp:Button ID="Button2" runat="server" Text="Mark Attendance" Font-Bold="true" Height="41px" Width="144px" Font-Size="Medium" OnClick="Button2_Click"/>
               </td>
           </tr>
           <tr>
               <td colspan="10" align="center">
                    
                 <asp:Label ID="label3" runat="server" Text=""></asp:Label>
               </td>
           </tr>
        </table>
        </center>
    </div>
    </center>
</asp:Content>
