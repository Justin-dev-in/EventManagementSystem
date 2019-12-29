using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace DevsEMS.Dal
{
    public class Credentialdal
    {

        public DataTable checkcredential(int Employeeid, string password)
        {
            DataTable crdTable = new DataTable("LoginCredentials");

            using (MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "ChkCredentials";
                CMD.Parameters.AddWithValue("p_EID", Employeeid);
                CMD.Parameters.AddWithValue("p_password", password);
                MySqlDataReader DR = CMD.ExecuteReader();
                crdTable.Load(DR);
                DR.Close();
                CN.Close();
            }
            return crdTable;
        }
    }
}