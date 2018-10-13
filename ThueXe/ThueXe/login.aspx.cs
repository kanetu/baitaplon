using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace ThueXe
{
    public partial class login : System.Web.UI.Page
    {
        XuLy xl = new XuLy();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (xl.Login(txbUsername.Text, txbPassword.Text))
            {
                var info = xl.getInfo(txbUsername.Text, txbPassword.Text);
                Session["username"] = info.TAIKHOAN;
                Session["phanquyen"] = info.QUYEN;

                Response.Redirect("dashboard.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}