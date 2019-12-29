using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevsEMS.Dal;
using System.Data;

using System.Configuration;
using MySql.Data.MySqlClient;

namespace DevsEMS
{
    public partial class Eventdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DevsEventsDal dal = new DevsEventsDal();
            DataTable eventTable = dal.getEvent(int.Parse(Request.QueryString["id"]));
            ltEventCode.Text = eventTable.Rows[0][0].ToString();
            ltEventCode1.Text = eventTable.Rows[0][0].ToString();
            lteventid.Text = eventTable.Rows[0][1].ToString();
            lteventname.Text = eventTable.Rows[0][2].ToString();
            lteventdescription.Text = eventTable.Rows[0][3].ToString();
            ltstartdate.Text = eventTable.Rows[0][4].ToString();
            ltenddate.Text = eventTable.Rows[0][5].ToString();
            ltvenue.Text = eventTable.Rows[0][6].ToString();
            lteventfees.Text = eventTable.Rows[0][7].ToString();
            lteventstatus.Text = eventTable.Rows[0][8].ToString();
            logo.ImageUrl = eventTable.Rows[0][9].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Role"] != null && Session["EID"]!=null)
            {
                MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString);


                MySqlCommand CMD = new MySqlCommand("insertEventSubsciption", CN);


                CMD.CommandType = CommandType.StoredProcedure;


                CMD.Parameters.AddWithValue("p_EventID", lteventid.Text);
                CMD.Parameters.AddWithValue("p_EID", Session["EID"]);
                CN.Open();
                int k = CMD.ExecuteNonQuery();
                if (k != 0)
                {

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                               "alert('Subscribed sucessfully');window.location ='Home.aspx';", true);
                }
                CN.Close();

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                               "alert('You are not logged in,you need to log in to register');window.location ='Login.aspx';", true);
            }
        }


        
    }
  }
