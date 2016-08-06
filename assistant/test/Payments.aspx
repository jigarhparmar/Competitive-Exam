<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="assistant_Notifaication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="outerDiv"><h1>Student Payment</h1> </div> 
   <div id="Content">
        
           
        <table>
        <tr>
            <td> <h3>Search Students:-</h3></td>
            <td><asp:TextBox ID="userName" runat="server" class="inputs" placeholder="USER NAME"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" 
             onclick="Button1_Click1"  />
        </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><h2>Student Payments</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">RegisterId:-</asp:Label></td>
        <td><asp:TextBox ID="rId" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">UserName:-</asp:Label></td>
        <td><asp:TextBox ID="uName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="">Course:-</asp:Label></td>
        <td>
            <asp:DropDownList ID="sCourse" class="inputs" runat="server" 
                AutoPostBack="True" onselectedindexchanged="sCourse_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">Payment Mode:-</asp:Label></td>
        <td>
            <asp:DropDownList ID="payMode" class="inputs" runat="server" >
                <asp:ListItem Selected="True">SELECT PAYMENT MODE</asp:ListItem>
                <asp:ListItem>First InstallMent</asp:ListItem>
                <asp:ListItem>Second InstallMent</asp:ListItem>
                <asp:ListItem>Full Installment</asp:ListItem>
            </asp:DropDownList>
        </td>
        
        </tr>
        <tr>
        <td><asp:Label ID="Label5" runat="server" Text="">Term 1:-</asp:Label></td>
        <td><asp:TextBox ID="term1" runat="server" class="inputs"  
                ></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label6" runat="server" Text="">Remaining Fees:-</asp:Label></td>
        <td><asp:TextBox ID="term2" runat="server" class="inputs"  
                ></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label7" runat="server" Text="">Total Fess:-</asp:Label></td>
        <td><asp:TextBox ID="totolFees" runat="server" class="inputs" ReadOnly="True" 
                ></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click1" 
                   />
                </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
    </table>
   </div>
</asp:Content>

