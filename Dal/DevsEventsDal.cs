using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace DevsEMS.Dal
{
    public class DevsEventsDal
    {
        /* public DataTable addEvents()
          {

               using (MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString))
               {
                   CN.Open();
                   MySqlCommand CMD = new MySqlCommand();
                   CMD.Connection = CN;
                   CMD.CommandType = CommandType.StoredProcedure;
                   CMD.CommandText = "insertEventDetails";
                   CMD.Parameters.AddWithValue("EventID", );
                   MySqlDataAdapter DA
               }
           }*/

        public DataTable getAllEvent()
        {
            DataTable eventTable = new DataTable("eventdetails");

            using (MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "getAllEventDetails";

                MySqlDataReader DR = CMD.ExecuteReader();
                eventTable.Load(DR);
                DR.Close();
                CN.Close();
            }
            return eventTable;
        }

        public DataTable getEvent(int EventID)
        {
            DataTable eventTable = new DataTable("eventdetails");

            using (MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString))
            {
                CN.Open();
                MySqlCommand CMD = new MySqlCommand();
                CMD.Connection = CN;
                CMD.CommandType = CommandType.StoredProcedure;
                CMD.CommandText = "getEvent";
                CMD.Parameters.AddWithValue("e_EventID", EventID);
                MySqlDataReader DR = CMD.ExecuteReader();
                eventTable.Load(DR);
                DR.Close();
                CN.Close();
            }
            return eventTable;
        }

    }
}
