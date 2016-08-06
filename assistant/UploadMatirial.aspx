<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="UploadMatirial.aspx.cs" Inherits="assistant_Timetbl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="outerDiv"><h1>Upload New Materials</h1> </div>
<div id="Content">
                <asp:DropDownList ID="sCource" runat="server" class="inputs"  Width="290px" 
                    AutoPostBack="True">
                    

                </asp:DropDownList>
                <h4>Add Exam Schedule</h4>

    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server"></asp:Label>

</div>       

</asp:Content>

