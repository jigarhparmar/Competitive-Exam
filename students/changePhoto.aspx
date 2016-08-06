<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.master" AutoEventWireup="true" CodeFile="changePhoto.aspx.cs" Inherits="students_changePhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="outerDiv"><h1>Upload New Materials</h1> </div>
     <div id="Content">
        <table>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload" /></td>
            </tr>
        </table>
     </div>
</asp:Content>

