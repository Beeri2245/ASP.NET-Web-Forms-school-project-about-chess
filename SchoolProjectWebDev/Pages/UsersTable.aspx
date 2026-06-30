<%@ Page Title="UserTable" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsersTable.aspx.cs" Inherits="SchoolProjectWebDev.Pages.UsersTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-content">

        <h1>All Registered Users</h1>

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        <br /><br />

        <label>Enter ID to delete:</label>

        <input type="text" id="deleteId" name="deleteId" />

        <input type="submit" value="Delete" runat="server" onserverclick="Delete_Click" />

        <br /><br />

        <asp:Label ID="lblDeleteResult" runat="server"></asp:Label>

        <br /><br />

        <label>Enter username to search:</label>

        <input type="text" id="searchId" name="searchId" />

        <br /><br />

        <label>Enter email to search:</label>

        <input type="text" id="searchEmail" name="searchEmail" />

        <input type="submit" value="Search" runat="server" onserverclick="Search_Click" />

        <br /><br />

        <asp:Label ID="lblSearchResult" runat="server"></asp:Label>

        <br /><br />

        <input type="submit" value="Show All" runat="server" onserverclick="ShowAll_Click" />

    </div>

</asp:Content>