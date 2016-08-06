<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="StudentRequest.aspx.cs" Inherits="assistant_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <div id="Content">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="#333333" 
                            GridLines="None"  DataKeyNames="id">
                            <Columns>
                                <asp:TemplateField>
                                <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" />
                                </ItemTemplate>
                                </asp:TemplateField>
                               </Columns> 
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        
                        
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
</asp:Content>

