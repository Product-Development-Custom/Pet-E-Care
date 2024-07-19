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
                string PetName = Pet.SelectPet;
                pnlBreeds.Visible = true;
                dogBreeds.Visible = PetName == "Dog";
                catBreeds.Visible = PetName == "Cat";
                birdBreeds.Visible = PetName == "Bird";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDayCare.Text) && !string.IsNullOrEmpty(txtDayCare1.Text) && !string.IsNullOrEmpty(TextBox1.Text) 
                && !string.IsNullOrEmpty(TextBox2.Text) && !string.IsNullOrEmpty(txtPetTraining.Text) && !string.IsNullOrEmpty(txtPetBodyWash.Text))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                lbl3.Text = "Please Enter All Details";
            }
        }
    }
    public class Pet
    {
        public static string SelectPet = "Dog";
        public string Name { get; set; }
        public string ImageUrl { get; set; }
    }
}