<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.master" AutoEventWireup="true" CodeFile="viewSched.aspx.cs" Inherits="students_viewSched" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div id="outerDiv" style="padding-left:320px;"><h1>VIEW EXAM SCHEDULE</h1></div>
  <div id="Content">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="eid" DataSourceID="SqlDataSource1"  BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black">
        <HeaderStyle BackColor="#b3dced" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="eid" HeaderText="ID"  InsertVisible="False" 
            ReadOnly="True" SortExpression="eid" />
        <asp:BoundField DataField="course"  HeaderText="COURSE" 
            SortExpression="course" />
        <asp:BoundField DataField="subject" HeaderText="SUBJECT" 
            SortExpression="subject" />
        <asp:BoundField DataField="date" HeaderText="DATE" SortExpression="date" />
        <asp:BoundField DataField="time" HeaderText="TIME" SortExpression="time" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [exscheTbl]"></asp:SqlDataSource>
  </div>

</asp:Content>

