    <%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.master" AutoEventWireup="true" CodeFile="feedBack.aspx.cs" Inherits="students_feedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="outerDiv"><h1>Give FeedBack </h1></div>
<div id="Content">

 <table>
        <tr>
            <td colspan="2" align="center"><h2> Submit Feedback</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">User Name:-</asp:Label></td>
        <td><asp:TextBox ID="utxt" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="utxt" runat="server" ErrorMessage="Enter User Name"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">Full Name:-</asp:Label></td>
        <td><asp:TextBox ID="ftxt" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="ftxt" runat="server" ErrorMessage="Enter Full Name"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">Messag:-</asp:Label></td>
        <td><asp:TextBox ID="mtxt" runat="server" class="inputs"   Font-Size="15"   TextMode="MultiLine"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="mtxt" runat="server" ErrorMessage="Enter Message"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Button ID="Button1" runat="server" 
                    Text="Submit" onclick="Button1_Click" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
    </table>
    
</div>

</asp:Content>

