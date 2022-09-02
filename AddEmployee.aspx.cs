using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace EmployeesApp
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager
            .ConnectionStrings["ASPNET_DBConnectionString1"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }//end of Page_Load

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string title = txtTitle.Text;
            string department = txtDepartment.Text;
            int salary = Convert.ToInt32(txtSalary.Text);
            try
            {
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                string query = $"INSERT INTO Employee VALUES('{firstName}', '{lastName}', '{email}', '{title}', '{department}', '{salary}')";
            SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                conn.Close();
            }//end of try
            catch (Exception ex)
            {
                throw ex;
            }//end of catch

            Response.Redirect("Default.aspx");

        }//end of btnAdd_Click

    }//end of class
}//end of namespace