<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="ConfirmStudents.aspx.cs" Inherits="assistant_ConfirmStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div id="outerDiv"><h1>Confirm Student</h1> </div> 
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
        <td><asp:Label ID="Label2" runat="server" Text="">RegisterId:-</asp:Label></td>
        <td><asp:TextBox ID="rId" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rId" ForeColor="Red" ErrorMessage="Required UserId"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">UserName:-</asp:Label></td>
        <td><asp:TextBox ID="uName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uName" ForeColor="Red" ErrorMessage="UserName Required"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">Full Name:-</asp:Label></td>
        <td><asp:TextBox ID="fullName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fullName" ForeColor="Red" ErrorMessage="FullName Required"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="" Visible="false">Password:-</asp:Label></td>
        <td><asp:TextBox ID="pass" runat="server" Visible="false" class="inputs" ReadOnly="True" 
                ></asp:TextBox></td>
        </tr>
        
        <tr>
        <td><asp:Label ID="Label6" runat="server" Text="">Select Course:-</asp:Label></td>
        <td><asp:DropDownList ID="sCourse" class="inputs" runat="server" 
                AutoPostBack="True" onselectedindexchanged="sCourse_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
        </tr>
         <tr>
        <td><asp:Label ID="Label8" runat="server" Text="">Payment Mode:-</asp:Label></td>
        <td>
            <asp:DropDownList ID="payMode" class="inputs" runat="server" AutoPostBack="True"
                onselectedindexchanged="payMode_SelectedIndexChanged" >
                <asp:ListItem Selected="True" Value="0">SELECT PAYMENT MODE</asp:ListItem>
                <asp:ListItem Value="1">Full</asp:ListItem>
                <asp:ListItem Value="2">Installment</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="0" ControlToValidate="payMode" ForeColor="Red" ErrorMessage="Please Select Valid Payment Mode"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label7" runat="server" Text="">Term 1:-</asp:Label></td>
        <td><asp:TextBox ID="term1" runat="server" class="inputs"  ReadOnly="True"
                ></asp:TextBox>
        </td>
        </tr>
        
         <tr>
        <td><asp:Label ID="Label10" runat="server" Text="">Remening Fees:-</asp:Label></td>
        <td><asp:TextBox ID="remFees" runat="server" class="inputs" ReadOnly="True" 
                ></asp:TextBox>
        </td>
        </tr>

        <tr>
        <td><asp:Label ID="Label9" runat="server" Text="">Total Fess:-</asp:Label></td>
        <td><asp:TextBox ID="totolFees" runat="server" class="inputs" ReadOnly="True" 
                ></asp:TextBox></td>
        </tr>
        
        <tr>
            <td colspan="2" align="center">
                <br /><asp:Button ID="Button2" runat="server" Text="Submit" 
                    onclick="Button2_Click"  />
                    <asp:Button ID="ReportGenrate" runat="server" Text="Print" 
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

