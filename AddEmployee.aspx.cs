using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace DevsEMS
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString);


            MySqlCommand CMD = new MySqlCommand("insertEmployeeDetails", CN);

            MySqlCommand CMD1 = new MySqlCommand("insertCredentials", CN);
            CMD1.CommandType = CommandType.StoredProcedure;
            CMD.CommandType = CommandType.StoredProcedure;
            string str = Empimage.FileName;
            Empimage.PostedFile.SaveAs(Server.MapPath("~/Images/" + str));
            string Image = "~/Images/" + str.ToString();
            

            CMD.Parameters.AddWithValue("p_EID", EmployeeID.Text);
            CMD.Parameters.AddWithValue("p_DID", DepartmentID.Text);
            CMD.Parameters.AddWithValue("p_EmpName", EmployeeName.Text);
            CMD.Parameters.AddWithValue("p_Address", Address.Text);
            CMD.Parameters.AddWithValue("p_Phone", Phone.Text);
            CMD.Parameters.AddWithValue("p_Email", Email.Text);
            CMD.Parameters.AddWithValue("p_DOB", DOB.Text);
            CMD.Parameters.AddWithValue("p_DOJ", DOJ.Text);
            CMD.Parameters.AddWithValue("p_Skillset", Skillset.Text);
            CMD.Parameters.AddWithValue("p_salary", Salary.Text);
            CMD.Parameters.AddWithValue("p_EmployeeImage", Image);
            CMD1.Parameters.AddWithValue("p_Password", Password.Text);
            CMD1.Parameters.AddWithValue("p_EID", EmployeeID.Text);
            CMD1.Parameters.AddWithValue("p_role", Role.Text);

            CN.Open();
            int k = CMD.ExecuteNonQuery();
           int l= CMD1.ExecuteNonQuery();
            if (k != 0 && l!=0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                           "alert('User details saved sucessfully');window.location ='AddEmployee.aspx';", true);
            }
            CN.Close();
        }
    }
}