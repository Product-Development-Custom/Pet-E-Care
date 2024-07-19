using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Net.Mail;
using System.Net;
using System.Web.Services.Description;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.UI;
using System.Data;

namespace Pet_E_Care
{
    public partial class Home : System.Web.UI.Page
    {
        public SqlConnection cn = new SqlConnection("workstation id=PetCareDemo.mssql.somee.com;packet size=4096;user id=Vansh456_SQLLogin_2;pwd=6hhkvg8fvh;data source=PetCareDemo.mssql.somee.com;persist security info=False;initial catalog=PetCareDemo;TrustServerCertificate=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string PetName = rbBird.Checked ? rbBird.Text : rbCat.Checked ? rbCat.Text : rbDog.Checked ? rbDog.Text : string.Empty;
            if (!string.IsNullOrEmpty(txtName.Text) && !string.IsNullOrEmpty(txtContactNumber.Text))
            {
                string sql = "insert into PetCare values('" + txtName.Text + "','" + txtContactNumber.Text + "','" + PetName + "')";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtName.Text = "";
                txtContactNumber.Text = "";
                Pet.SelectPet = PetName;
                Response.Redirect("Facilities.aspx");
            }
            else
            {
               lbl3.Text = "Please Enter All Details";
            }
        }
    }
}