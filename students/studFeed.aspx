<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.master" AutoEventWireup="true" CodeFile="studFeed.aspx.cs" Inherits="students_studFeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div id="Content">

 <table>
        <tr>
            <td colspan="2" align="center"><h2> Submit Feedback</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">User Name:-</asp:Label></td>
        <td><asp:TextBox ID="utxt" runat="server" class="inputs"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">Full Name:-</asp:Label></td>
        <td><asp:TextBox ID="ftxt" runat="server" class="inputs"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">Message:-</asp:Label></td>
        <td><asp:TextBox ID="mtxt" runat="server" class="inputs"   Font-Size="15"   TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Button ID="Button1" runat="server" 
                    Text="Submit" onclick="Button1_Click1"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
    </table>
    
</div>
    
   
</asp:Content>

