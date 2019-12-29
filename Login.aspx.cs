using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevsEMS.Dal;
using System.Data;

namespace DevsEMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            Credentialdal credential = new Credentialdal();
            DataTable table = credential.checkcredential(int.Parse(LoginId.Text), Password.Text);
            if (table.Rows.Count > 0)
            {
                Session["Role"] = table.Rows[0][2];
                Session["EID"] = table.Rows[0][0];
                Response.Redirect("~/Home.aspx");
            
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                           "alert('Enter valid credentials');window.location ='Login.aspx';", true);
            }


        }
    }
}