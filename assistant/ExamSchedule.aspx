<%@ Page Title="" Language="C#" MasterPageFile="~/assistant/AssiatantMaster.master" AutoEventWireup="true" CodeFile="ExamSchedule.aspx.cs" Inherits="assistant_ExamSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="outerDiv"><h1>Add Exam Schedule</h1> </div> 
<div id="Content" style="padding-left:140px;">
         
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="eid" DataSourceID="SqlDataSource1" 
              ShowFooter="True" 
             BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
             CellPadding="4" CellSpacing="2" ForeColor="Black" >
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="eid">
                     <EditItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("eid") %>'></asp:Label>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("eid") %>'></asp:Label>
                     </ItemTemplate>

                     <FooterTemplate>
                         <asp:LinkButton ID="LinkButton1" OnClick=" LinkButton1_Click"  LinkButton1_ClickID="LinkButton1" runat="server">INSERT</asp:LinkButton>  
                     
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="COURSE" SortExpression="course">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("course") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("course") %>'></asp:Label>
                     </ItemTemplate>

                     <FooterTemplate>
                         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="Please fill course Name">*</asp:RequiredFieldValidator>
                     </FooterTemplate>

                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="SUBJECT" SortExpression="sub">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("subject") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                     </ItemTemplate>

                     <FooterTemplate>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="Please fill subject">*</asp:RequiredFieldValidator>
                     
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="DATE" SortExpression="date">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="Please fill Date">*</asp:RequiredFieldValidator>
                     
                     </FooterTemplate>


                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="TIME" SortExpression="time">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("time") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%# Bind("time") %>'></asp:Label>
                     </ItemTemplate>

                      <FooterTemplate>
                          <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ErrorMessage="Please Fill Time">*</asp:RequiredFieldValidator>
                     
                     </FooterTemplate>
                 </asp:TemplateField>
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
             DeleteCommand="DELETE FROM [exscheTbl] WHERE [eid] = @eid" 
             InsertCommand="INSERT INTO [exscheTbl] ([course], [subject], [date], [time]) VALUES (@course, @subject, @date, @time)" 
             SelectCommand="SELECT * FROM [exscheTbl]" 
             UpdateCommand="UPDATE [exscheTbl] SET [course] = @course, [subject] = @subject, [date] = @date, [time] = @time WHERE [eid] = @eid">
             <DeleteParameters>
                 <asp:Parameter Name="eid" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="course" Type="String" />
                 <asp:Parameter Name="subject" Type="String" />
                 <asp:Parameter DbType="Date" Name="date" />
                 <asp:Parameter Name="time" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="course" Type="String" />
                 <asp:Parameter Name="subject" Type="String" />
                 <asp:Parameter DbType="Date" Name="date" />
                 <asp:Parameter Name="time" Type="String" />
                 <asp:Parameter Name="eid" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         
         <br />
          
         <asp:ValidationSummary  ValidationGroup="INSERT" ID="validationsum1" ForeColor="Red" runat="server" />
         
         </div>

</asp:Content>

