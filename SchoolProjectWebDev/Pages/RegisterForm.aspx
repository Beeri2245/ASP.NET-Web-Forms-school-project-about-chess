<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="SchoolProjectWebDev.Pages.Register_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        
        <h1>Registeration Form</h1>

                <label>Username:</label>
                <input type="text" id="username" name="username" placeholder="username" minlength="3" maxlength="10" /> <!--required-->  <br />

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="example@gmail.com" maxlength="30" /> <!--required--> <br />

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="password" minlength="6" maxlength="22" /> <!--required-->  <br />

                <label for="phone">Phone #:</label>
                <input type="tel" id="phone" name="phone" placeholder="052-123-4567"
                    title="Enter an Israeli mobile number (e.g. 0521234567 or +972521234567)" /> <!--required-->  <br />

                <label for="birthday">birthdate:</label>
                <input type="date" id="birthday" name="birthday" /> <br />

                <label for="gender">Gender: </label>
                <select id="gender" name="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Prefer not to say">Prefer not to say</option>
                    <option value="else">else</option>

                </select> <br />

                <label></label>


                <br />
                <div id="form-buttons">
                    <input type="reset" value="Reset"/> <br />
                    <input type="submit" value="Submit" runat="server" onserverclick="Submit_Click" onclick="return validForm();"  />
                </div>
                <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        

        <script src="../Scripts/script.js"></script>
    </div>

</asp:Content>
