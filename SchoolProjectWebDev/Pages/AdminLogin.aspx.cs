using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolProjectWebDev.Pages
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Login_Click(object sender, EventArgs e)
        {
            string username = Request.Form["adminUsername"];
            string password = Request.Form["adminPassword"];

            if (username == "admin" && password == "2245")
            {
                Session["admin"] = "true";
                Response.Redirect("UsersTable.aspx");
            }
            else
            {
                lblAdminResult.Text = "Wrong username or password.";
            }
        }
    }
}