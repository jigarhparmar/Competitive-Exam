<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="ConfirmStudents.aspx.cs" Inherits="assistant_ConfirmStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div id="outerDiv"><h1>Confirm Student</h1> </div> 
  <div id="Content">
        
        
        <table>
        <tr>
            <td><h3>Search Students:-</h3></td>
            <td><asp:TextBox ID="userName" runat="server" class="inputs" placeholder="USER NAME"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" 
            onclick="Button1_Click1" />
        </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><h2>Search Result</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">RegisterId:-</asp:Label></td>
        <td><asp:TextBox ID="rId" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">UserName:-</asp:Label></td>
        <td><asp:TextBox ID="uName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">Full Name:-</asp:Label></td>
        <td><asp:TextBox ID="fullName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="">Password:-</asp:Label></td>
        <td><asp:TextBox ID="pass" runat="server" class="inputs" ReadOnly="True" 
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
            <asp:DropDownList ID="payMode" class="inputs" runat="server" >
                <asp:ListItem Selected="True">SELECT PAYMENT MODE</asp:ListItem>
                <asp:ListItem>First InstallMent</asp:ListItem>
                <asp:ListItem>Full Installment</asp:ListItem>
            </asp:DropDownList>
        </td>
        
        </tr>
        <tr>
        <td><asp:Label ID="Label7" runat="server" Text="">Term 1:-</asp:Label></td>
        <td><asp:TextBox ID="term1" runat="server" class="inputs"  
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

            </td>   
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label5" runat="server"></asp:Label></td>
        </tr>
    </table>


     <asp:DataList  ID="DataList1" runat="server" 
            Width="800px">
            
            <ItemTemplate>
                
                <table style="width:100%">
                   
                   
                    <tr>
                        <td>
                            <asp:Label Text='<%# Eval("userName") %>' ID="Label2" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("gender") %>' ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("emailId") %>' ID="lblCourseName" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("cNumber") %>' ID="Label3" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("city") %>' ID="Label4" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("eDetail") %>' ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
               
                <hr />
            </ItemTemplate>
        </asp:DataList>
    
    </div>            
  </asp:Content>

