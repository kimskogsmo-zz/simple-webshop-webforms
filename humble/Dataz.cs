using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace humble
{
    public class Dataz
    {
        
        private humbleEntities db = new humbleEntities(); 
        
        public static List<Product> returnProducts()
        {
            return db.Products.ToList();
        }
        public static List<Category> returnCategories()
        {
            return db.Categories.ToList();
        }
        public static List<Order> returnOrders()
        {
            return db.Orders.ToList();
        }
    }
}
