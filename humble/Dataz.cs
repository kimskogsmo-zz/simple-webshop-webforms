using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace humble
{
    public class Dataz
    {
        public static List<Product> returnProducts()
        {
            using (humbleEntities context = new humbleEntities())
            {
                return context.Products.ToList();
            }
        }
        public static List<Category> returnCategories()
        {
            using (humbleEntities context = new humbleEntities())
            {
                return context.Categories.ToList();
            }
        }
        public static List<Order> returnOrders()
        {
            using (humbleEntities context = new humbleEntities())
            {
                return context.Orders.ToList();
            }
        }
    }
}