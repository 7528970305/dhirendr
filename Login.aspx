<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Attendance_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:450px;">
            <table style="width:565px;height:421px;background-color:#00ffff;margin:0 auto">
               <tr>
                   <td colspan="2" align="center">
                   &nbsp;<img id="Img1" src="~/Images/Login2.jpg" alt="" runat="server" style="height:190px;width:199px" />
                   </td>
               </tr>
                <tr>
                    <td colspan="2" align="center">
                        <h2>Teacher & Admin Login</h2>
                    </td>
                </tr>
                <tr>
                   <td align="center" style="width:50%">
                       <b>Email Id/User Id</b>
                   </td>
                    <td>
                        <asp:TextBox ID="textbox1" runat="server" BackColor="Transparent" Height="29px" Width="166px" Font-Bold="true" placeholder="Enter Email id/User id"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textbox1" ErrorMessage="Enter email id" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                   <td align="center" style="width:50%">
                       <b>Password</b>
                   </td>
                    <td>
                        <asp:TextBox ID="textbox2" runat="server" BackColor="Transparent" Height="29px" Width="166px" Font-Bold="true" TextMode="Password" placeholder="Enter Password"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textbox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="button1" runat="server" Text="Login" Font-Bold="true" Height="46px" Width="201" OnClick="button1_Click" /><hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="label1" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
