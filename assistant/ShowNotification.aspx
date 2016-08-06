<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="ShowNotification.aspx.cs" Inherits="assistant_ShowNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="outerDiv"><h1>Student Inquery</h1> </div> 
  <div id="Content" style="padding-left:30px; margin-top:30px; margin-bottom:30px;">
  
        <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />

      <asp:Label ID="Label1" runat="server" ></asp:Label>
</div>

</asp:Content>

