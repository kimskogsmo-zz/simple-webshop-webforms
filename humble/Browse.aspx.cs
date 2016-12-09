using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace humble.Pages
{
    public partial class Browse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("Login.aspx");
            }
            var products = Dataz.returnProducts();
            var categories = Dataz.returnCategories();

            categoryList.DataSource = categories;
            productList.DataSource = products;

            categoryList.DataBind();
            productList.DataBind();
        }
    }
}