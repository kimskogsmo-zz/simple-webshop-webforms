using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace humble.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginbutton_Click(object sender, EventArgs e)
        {
            var email = emailBox.Text;
            var pass = passBox.Text;

            using (humbleEntities conn = new humbleEntities())
            {
                Customer customer = conn.Customers.FirstOrDefault(x => x.Pass == passBox.Text && x.Email == emailBox.Text);
                Session["currentCustomer"] = customer;
                FormsAuthentication.SetAuthCookie(customer.Email, false);
                Response.Redirect("Browse.aspx");
            }
        }
    }

}