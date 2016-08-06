<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="assistant_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="outerDiv"><h1>Change Old Password</h1> </div>
<div id="Content">
               <table>
               <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server">User Name:-</asp:Label></td>
                    <td>
                        <asp:TextBox ID="userName" placeholder="Enter UserName" runat="server" class="inputs"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server">Old Password:-</asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" placeholder="Enter Password" ReadOnly="true" runat="server" class="inputs" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server">New Password:-</asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" TextMode="Password" placeholder="Enter Re Password" runat="server" class="inputs" ></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                        </td>
                    </tr>
                   <asp:Label ID="Label4" runat="server" ></asp:Label>
               </table>
</div>       


</asp:Content>

