using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace humble.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (humbleEntities cont = new humbleEntities())
                {
                    var fn = fnBox.Text;
                    var ln = lnBox.Text;
                    var email = mailBox.Text;
                    var age = ageBox.Text;
                    var passw = passBox.Text;
                    var of = chkBox.Checked;

                    Customer newCustomer = new Customer();
                    newCustomer.FirstName = fn;
                    newCustomer.LastName = ln;
                    newCustomer.Email = email;
                    newCustomer.Age = Convert.ToInt32(age);
                    newCustomer.Pass = passw;
                    newCustomer.Offers = of;

                    cont.Customers.Add(newCustomer);
                    Response.Redirect("RegistrationSuccess.aspx");
                }
            }
        }
    }
}