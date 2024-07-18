using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pet_E_Care
{
    public partial class Facilities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string PetName = "Cat";//todo:Pet.SelectPet
                if (PetName == "Dog")
                {
                    List<Pet> pets = new List<Pet>
                {
                    new Pet { Name = "Golden Retriever", ImageUrl = "https://images.unsplash.com/photo-1558788353-f76d92427f16" },
                    new Pet {Name = "Labrador Retriever", ImageUrl = "https://images.unsplash.com/photo-1560807707-8cc77767d783"},
                };
                    Repeater1.DataSource = pets;
                    Repeater1.DataBind();
                }
                else if (PetName == "Cat")
                {
                    List<Pet> pets = new List<Pet>
                {
                    new Pet { Name = "Golden Retriever", ImageUrl = "https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
                    new Pet {Name = "Labrador Retriever", ImageUrl = "https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"},
                    new Pet {Name = "Beagle", ImageUrl = "https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}
                };
                    Repeater1.DataSource = pets;
                    Repeater1.DataBind();
                }
                else if (PetName == "Bird")
                {
                    List<Pet> pets = new List<Pet>
                {
                    new Pet { Name = "Golden Retriever", ImageUrl = "https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" },
                    new Pet {Name = "Labrador Retriever", ImageUrl = "https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"},
                    new Pet {Name = "Beagle", ImageUrl = "https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"}
                };
                    Repeater1.DataSource = pets;
                    Repeater1.DataBind();
                }
            }
        }
    }
    public class Pet
    {
        public static string SelectPet;
        public string Name { get; set; }
        public string ImageUrl { get; set; }
    }
}