using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShopWebPage
{
    public partial class SecurityPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }


    }
}