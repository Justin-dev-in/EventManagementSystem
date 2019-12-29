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
    public partial class AddEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            MySqlConnection CN = new MySqlConnection(ConfigurationManager.ConnectionStrings["EMSConstr"].ConnectionString);


            MySqlCommand CMD = new MySqlCommand("insertEventDetails",CN);
            CMD.CommandType = CommandType.StoredProcedure;
            string str = EventLogo.FileName;
            EventLogo.PostedFile.SaveAs(Server.MapPath("~/Images/" + str));
            string Image = "~/Images/" + str.ToString();
            CMD.Parameters.AddWithValue("EventID", EventID.Text);
         
            CMD.Parameters.AddWithValue("Eventcode", EventCode.Text);
            CMD.Parameters.AddWithValue("Eventname", EventName.Text);
            CMD.Parameters.AddWithValue("EventDescription", EventDescription.Text);
            CMD.Parameters.AddWithValue("StartDate", StartDate.Text);
            CMD.Parameters.AddWithValue("EndDate", EndDate.Text);
            CMD.Parameters.AddWithValue("Venue", Venue.Text);
            CMD.Parameters.AddWithValue("EventFees", EventFees.Text);
            CMD.Parameters.AddWithValue("EventStatus", EventStatus.Text);
            CMD.Parameters.AddWithValue("Eventlogo",Image);

            CN.Open();
            int k= CMD.ExecuteNonQuery();
            if (k != 0)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(),"alert",
                           "alert('Event details saved sucessfully');window.location ='AddEvent.aspx';",true);
            }
            CN.Close();
        }
    }
}