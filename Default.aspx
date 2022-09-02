<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeesApp.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" PageSize="15">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
        <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department" />
        <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" DataFormatString="{0:c2}" />
    </Columns>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle CssClass="pager-style" BackColor="#4a3c8c" ForeColor="#FFFFFF"
HorizontalAlign="Left" Font-Size="Larger" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_DBConnectionString1 %>" DeleteCommand="DELETE FROM [Employee] WHERE [id] = @id" InsertCommand="INSERT INTO [Employee] ([first_name], [last_name], [email], [title], [department], [salary]) VALUES (@first_name, @last_name, @email, @title, @department, @salary)" ProviderName="<%$ ConnectionStrings:ASPNET_DBConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [first_name], [last_name], [email], [title], [department], [salary] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [first_name] = @first_name, [last_name] = @last_name, [email] = @email, [title] = @title, [department] = @department, [salary] = @salary WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="first_name" Type="String" />
        <asp:Parameter Name="last_name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="department" Type="String" />
        <asp:Parameter Name="salary" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="first_name" Type="String" />
        <asp:Parameter Name="last_name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="department" Type="String" />
        <asp:Parameter Name="salary" Type="Int32" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
