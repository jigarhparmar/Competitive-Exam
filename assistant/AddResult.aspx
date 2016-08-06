<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="AddResult.aspx.cs" Inherits="assistant_AddResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="outerDiv"><h1>Add Result</h1> </div> 
     <div id="Content">
     <table>
        <tr>
            <td><h3>Search Students:-</h3></td>
            <td><asp:TextBox ID="userName" runat="server" class="inputs" placeholder="USER NAME"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" 
            onclick="Button1_Click1" CausesValidation="False" />
        </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><h2>Search Result</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">Full Name:-</asp:Label></td>
        <td><asp:TextBox ID="fName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="fName" ErrorMessage="Required FullName"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">course:-</asp:Label></td>
        <td><asp:TextBox ID="course" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="course" ErrorMessage="Required Course Name"></asp:RequiredFieldValidator></td>
        </tr>
    
         <tr>
        <td><asp:Label ID="Label8" runat="server" Text="">Select Subject</asp:Label></td>
        <td>
            <asp:DropDownList ID="selectSub" class="inputs" runat="server" >
                <asp:ListItem Selected="True" Value="0">SELECT SUBJECT</asp:ListItem>
                <asp:ListItem Value="1">Maths</asp:ListItem>
                <asp:ListItem Value="2">English</asp:ListItem>
                <asp:ListItem Value="3">GK</asp:ListItem>
                <asp:ListItem Value="4">GUJARATI GRAMMER</asp:ListItem>
                <asp:ListItem Value="5">Logical Reasoning</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" InitialValue="0" ForeColor="Red" ControlToValidate="selectSub" ErrorMessage="Select Subject  Name"></asp:RequiredFieldValidator></td>

        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">Out Of Marks:-</asp:Label></td>
        <td><asp:TextBox ID="ooMarks" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ControlToValidate="ooMarks" ErrorMessage="Enter Out Of Marks"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="">Obtain Marks:-</asp:Label></td>
        <td><asp:TextBox ID="obMarks" runat="server" class="inputs" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ControlToValidate="obMarks" ErrorMessage="Enter Obtain Marks"></asp:RequiredFieldValidator></td>
        </tr>
        
        
        <tr>
            <td colspan="2" align="center">
                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" 
                     />

            </td>   
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
    </table>
    
     </div>
</asp:Content>

