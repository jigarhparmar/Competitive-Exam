<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="assistant_AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="outerDiv"><h1>Add New Course</h1> </div> 
<div id="Content">
    
    <table>
        <tr>
            <td colspan="2" align="center"><h2>Add Course</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">CourseName:-</asp:Label></td>
        <td><asp:TextBox ID="cNametxt" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cNametxt" ForeColor="Red" ErrorMessage="Enter Course Name"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">Duration:-</asp:Label></td>
        <td><asp:TextBox ID="durationtxt" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="durationtxt" ForeColor="Red" ErrorMessage="Enter Duration Name"></asp:RequiredFieldValidator></td>
        </tr>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">Fees:-</asp:Label></td>
        <td><asp:TextBox ID="feestxt" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="feestxt" ForeColor="Red" ErrorMessage="Enter Fees"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br /><asp:Button ID="Button1" runat="server" 
                    Text="Submit" onclick="Button1_Click" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
    </table>
    
</div>
</asp:Content>

