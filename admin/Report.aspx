<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="outerDiv"><h1>Payment Wise Report</h1></div>
<div id="Content" style="padding-left:200px;">
    
        <h3>Payment Status</h3>
        <asp:DropDownList ID="DropDownList1" runat="server" class="inputs" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True" >
            <asp:ListItem Selected="True" Value="3">Select Payments Wise</asp:ListItem>
            <asp:ListItem Value="0">Half Payments</asp:ListItem>
            <asp:ListItem Value="1">Full Payments</asp:ListItem>
        </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" InitialValue="3" ForeColor="Red" ControlToValidate="DropDownList1" runat="server" ErrorMessage="Please Select Payment mode"></asp:RequiredFieldValidator>

        <br /><br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#b3dced" Font-Bold="True" ForeColor="Black" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>

        <asp:Button ID="Payment" runat="server" Text="Print Report"  terget="_Blank" onclick="Payment_Click" 
        />
    
    </div>
   
</asp:Content>

