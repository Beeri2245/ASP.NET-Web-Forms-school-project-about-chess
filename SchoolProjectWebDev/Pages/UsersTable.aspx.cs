using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolProjectWebDev.Pages
{
    public partial class UsersTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            string file = "Database3.mdf";
            string sql = "SELECT * FROM [Table]";

            DataTable dt = Helper.ExecuteDataTable(file, sql);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string file = "Database3.mdf";

            string username = Request.Form["deleteId"];

            string checkSql = "SELECT * FROM [Table] WHERE username='" + username + "'";
            DataTable dt = Helper.ExecuteDataTable(file, checkSql);

            if (dt.Rows.Count > 0)
            {
                string deleteSql = "DELETE FROM [Table] WHERE username='" + username + "'";
                Helper.DoQuery(file, deleteSql);

                lblDeleteResult.Text = "User deleted successfully!";

                string selectSql = "SELECT * FROM [Table]";
                GridView1.DataSource = Helper.ExecuteDataTable(file, selectSql);
                GridView1.DataBind();
            }
            else
            {
                lblDeleteResult.Text = "User does not exist.";
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string file = "Database3.mdf";

            string username = Request.Form["searchId"];
            string email = Request.Form["searchEmail"];

            string sql = "SELECT * FROM [Table] WHERE username='" + username + "' AND email='" + email + "'";

            DataTable dt = Helper.ExecuteDataTable(file, sql);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

                lblSearchResult.Text = "User found!";
            }
            else
            {
                lblSearchResult.Text = "No user found with this username and email.";
            }
        }

        protected void ShowAll_Click(object sender, EventArgs e)
        {
            string file = "Database3.mdf";

            string sql = "SELECT * FROM [Table]";

            GridView1.DataSource = Helper.ExecuteDataTable(file, sql);
            GridView1.DataBind();
        }
    }
}