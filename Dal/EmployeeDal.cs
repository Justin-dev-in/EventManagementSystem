using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
namespace DevsEMS.Dal
{
    public class EmployeeDal
    {
        public DataTable getAllEmployees()
        {

            DataTable employeeTable = new DataTable("Employee");

            using (MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "getAllEmployees";
                MySqlDataReader DR = CMD.ExecuteReader();
                employeeTable.Load(DR);
                DR.Close();
                CN.Close();
            }
            return employeeTable;

        }
        public DataTable getEmployee(int EmployeeID)
        {

            DataTable employeeTable = new DataTable("Employee");

            using (MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "getEmployee";
                CMD.Parameters.AddWithValue("e_EmployeeID", EmployeeID);
                MySqlDataReader DR = CMD.ExecuteReader();
                employeeTable.Load(DR);
                DR.Close();
                CN.Close();
            }
            return employeeTable;

        }

    }
}
