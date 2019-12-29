using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DevsEMS
{
    public partial class DevsEMS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Session["Role"] != null)
            {
                lnklogin.InnerText = "Logout";
            }

            if (IsPostBack)
            {
                if (lnklogin.InnerText.Equals("Logout"))


                {
                    lnklogin.InnerText = "Login";
                    Session.Abandon();
                }
            }
*/

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
                       "alert('logged out sucessfully');window.location ='Home.aspx';", true);
            
        }
    }
}
