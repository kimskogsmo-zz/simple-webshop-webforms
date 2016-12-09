using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using humble;

    public class Customer
    {
        public int id { get; set; }
        public string fn { get; set; }
        public string ln { get; set; }
        public string email { get; set; }
        public int age { get; set; }
        public string pass { get; set; }
        public bool offers { get; set; }
    }
    public class Order
    {
        public int id;
        public int sum;
        public DateTime date;
    }
    public class Category
    {
        public int id { get; set; }
        public string name { get; set; }
        public List<Product> productList { get; set; }
    }
    public class Product
    {
        public int id { get; set; }
        public string title { get; set; }
        public string details { get; set; }
        public int price { get; set; }
        public string imageUrl { get; set; }
        public List<Category> categoryList { get; set; }
    }
public class Cart
{
        public static List<Product> items { get; set; }
        public int sum { get; set; }
        public DateTime dateCreated { get; set; }
        public int nOfItems = items.Count();
        public HttpSessionStateBase session { get; set; }

        public void Add(Product product)
        {
            items.Add(product);
            sum += product.price;
        }

        //todo lägg till fler metoder

}
