<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="viewExSche.aspx.cs" Inherits="admin_viewExSche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="outerDiv"><h1>Exam Schedule</h1> </div> 
<div id="Content">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="eid" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:BoundField DataField="eid" HeaderText="ID" InsertVisible="False" 
            ReadOnly="True" SortExpression="eid" />
        <asp:BoundField DataField="course" HeaderText="COURSE" 
            SortExpression="course" />
        <asp:BoundField DataField="subject" HeaderText="SUBJECT" 
            SortExpression="subject" />
        <asp:BoundField DataField="date" HeaderText="DATE" SortExpression="date" />
        <asp:BoundField DataField="time" HeaderText="TIME" SortExpression="time" />
    </Columns>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [exscheTbl]"></asp:SqlDataSource>

</div>

</asp:Content>

