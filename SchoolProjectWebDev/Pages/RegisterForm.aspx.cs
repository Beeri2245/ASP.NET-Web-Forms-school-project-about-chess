using System;
using System.Data;
using System.Web.UI;

namespace SchoolProjectWebDev.Pages
{
    public partial class Register_Form : Page
    {
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string file = "Database3.mdf";

            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string phone = Request.Form["phone"];
            string birthday = Request.Form["birthday"];
            string gender = Request.Form["gender"];

            string checkSql = "SELECT * FROM [Table] WHERE username='" + username + "'";
            DataTable table = Helper.ExecuteDataTable(file, checkSql);
            if (table.Rows.Count == 0)
            {
                string insertSql = "INSERT INTO [Table] (username, email, password, phone, birthday, gender) VALUES ('"
                    + username + "', '"
                    + email + "', '"
                    + password + "', '"
                    + phone + "', '"
                    + birthday + "', '"
                    + gender + "')";

                Helper.DoQuery(file, insertSql);

                msg = "נרשמת בהצלחה";
            }
            else
            {
                msg = "המשתמש כבר קיים במערכת";
            }
            Session["name"] = "hello " + username;
            
            lblResult.Text = msg;
        }
    }
}