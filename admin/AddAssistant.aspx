<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="AddAssistant.aspx.cs" Inherits="admin_AddAssitant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div id="outerDiv"><h1>Add Assistant</h1></div>
    <div id="Content" style="padding-left:280px">

 <table >
        <tr>
            <td colspan="2" align="center"><h2> Assistant Registration</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">User Name:-</asp:Label></td>
        <td><asp:TextBox ID="utxt" runat="server" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="utxt" ForeColor="Red" ErrorMessage="Please Enter UserName"></asp:RequiredFieldValidator>
        </td>
        </tr>

        <tr>
        <td><asp:Label ID="Label6" runat="server" Text="">PassWord:-</asp:Label></td>
        <td><asp:TextBox ID="ptxt" runat="server" TextMode="Password" class="inputs"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ptxt" ForeColor="Red" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">UserType:-</asp:Label></td>
        <td><asp:TextBox ID="uttxt" runat="server" class="inputs" ReadOnly="true">assistant</asp:TextBox></td>
        <td></td>
        </tr>

        <tr>
        <td><asp:Label ID="Label7" runat="server" Text="">Full Name:-</asp:Label></td>
        <td><asp:TextBox ID="ftxt" runat="server" class="inputs" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ftxt" ForeColor="Red" ErrorMessage="Please Enter Fullname"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">Contact No:-</asp:Label></td>
        <td><asp:TextBox ID="ctxt" runat="server" class="inputs" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ForeColor="Red" ControlToValidate="ctxt" ErrorMessage="Please Enter Mobile Number"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="ctxt" validationexpression="^[0-9]{10}$" errormessage="Please enter a 10 digit number!"  ForeColor="Red" ></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label5" runat="server" Text="">EMail:-</asp:Label></td>
        <td><asp:TextBox ID="etxt" runat="server" class="inputs" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ControlToValidate="etxt" ErrorMessage="Please Enter Email Address"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="etxt" ForeColor="Red" ErrorMessage="Please Enter Valid Email Address"></asp:RegularExpressionValidator>
            
        </td>
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

