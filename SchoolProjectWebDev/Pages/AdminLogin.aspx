<%@ Page Title="AdminLogin" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SchoolProjectWebDev.Pages.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h1>Admin Login</h1>

        <label>Username:</label>
        <input type="text" id="adminUsername" name="adminUsername" /> <br /><br />

        <label>Password:</label>
        <input type="password" id="adminPassword" name="adminPassword" /> <br /><br />

        <input type="submit" value="Login" runat="server" onserverclick="Login_Click" />

        <br /><br />
        <asp:Label ID="lblAdminResult" runat="server"></asp:Label>
    </div>
</asp:Content>

