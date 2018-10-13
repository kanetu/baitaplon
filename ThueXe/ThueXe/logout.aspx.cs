using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThueXe
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("username");
            Session.Remove("phanquyen");
            bool gone = (Session["username"] == null);
            if (gone)
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}