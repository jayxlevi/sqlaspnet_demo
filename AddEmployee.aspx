<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EmployeesApp.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style2 {
            width: 356px;
        }
        .auto-style3 {
            height: 73px;
        }
        .auto-style4 {
            height: 73px;
            width: 267px;
        }
        .auto-style5 {
            width: 14px;
        }
    </style>

    <script>
        function clearForm() {
            document.forms[0].reset();
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 id="title">Add New Employee</h1>
    <table>
            <tr>
                <td class="auto-style4"></td>
                <td colspan="2" class="auto-style3">
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="error-message"
                        DisplayMode="List"
                        HeaderText="The following fields are required:" runat="server" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="FirstName" runat="server" Text="First Name"></asp:Label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name" CssClass="error-message" ControlToValidate="txtFirstName">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="LastName" runat="server" Text="Last Name"></asp:Label></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLastName" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name" CssClass="error-message" ControlToValidate="txtLastName">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td>Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email" CssClass="error-message" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Title</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Title" CssClass="error-message" ControlToValidate="txtTitle">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td>Department</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDepartment" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department" CssClass="error-message" ControlToValidate="txtDepartment">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td>Salary</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtSalary" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Salary" CssClass="error-message" ControlToValidate="txtSalary">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnAdd" runat="server" Font-Size="Large" Height="35px"
                        OnClick="btnAdd_Click" Text="Add" Width="300px" BackColor="#0066FF" ForeColor="White"
                        CssClass="form-button" />
                    <asp:Button ID="Button3" runat="server" Text="Clear Form" OnClientClick="clearForm()"
                        PostBackUrl="~/AddEmployee.aspx" CausesValidation="False" CssClass="form-button" />
                    <asp:Button ID="Button2" runat="server" Font-Size="Large" Height="35px"
                        PostBackUrl="~/Default.aspx" Text="Cancel" Width="300px" CausesValidation="False"
                        ForeColor="#CC3300" CssClass="form-button" />
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
       
        
</asp:Content>
