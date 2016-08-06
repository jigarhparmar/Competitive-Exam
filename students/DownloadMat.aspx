<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.master" AutoEventWireup="true" CodeFile="DownloadMat.aspx.cs" Inherits="students_DownloadMat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="outerDiv"><h1>Download Matirial</h1> </div> 
    <div id="Content" style="padding-left:100px;">
    <h2 style="color:#000000;">Download Material</h2>
    <asp:DropDownList ID="dropCourse" class="inputs" runat="server" 
            onselectedindexchanged="dropCourse_SelectedIndexChanged" 
            AutoPostBack="True">
    </asp:DropDownList>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Size="X-Large"></asp:Label>
        <br /><br />
        <asp:DataList OnItemCommand="Download" ID="DataList1" runat="server" 
            Width="411px">
            <ItemTemplate>
               
                <table style="width:100%" >
                    
                    <tr>
                        <td style="width:10%">
                            <asp:Label Text='<%# Eval("materialid") %>' ID="Label2" runat="server"></asp:Label>
                        </td>
                        <td style="width:80%">
                            <asp:Label Text='<%# Eval("materialfile") %>' ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td style="width: 10%">
                            <asp:Label Text='<%# Eval("coursename") %>' ID="lblCourseName" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Button CommandArgument='<%# Eval("materialid") %>' ID="btnDownload" runat="server" Text="Download" />
                        </td>
                    </tr>
                </table>
               
                <hr />
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

