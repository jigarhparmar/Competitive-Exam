<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="ViewCourseWise.aspx.cs" Inherits="admin_ViewCourseWise" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="outerDiv"><h1>View Course Wise Report</h1></div>
    <div id="Content" style="padding-left:200px;">

        <h3>Course Wise</h3>
          <asp:DropDownList ID="cCourse" runat="server" class="inputs" 
            onselectedindexchanged="sCourse_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="0">SELECTITEM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />

           <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" 
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

        <br />
        <asp:Button ID="Course" runat="server" Text="Print Report" style="margin-left:250px;" onclick="Course_Click" />
    </div>
</asp:Content>

