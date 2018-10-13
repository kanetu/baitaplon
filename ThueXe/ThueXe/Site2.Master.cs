using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ThueXe
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                lbNickname1.Text = Session["username"].ToString();
                lbNickname2.Text = Session["username"].ToString();
                if(int.Parse(Session["phanquyen"].ToString()) == 1)
                {
                    lbPhanQuyen.Text = "Quản trị viên";
                }
                else
                {
                    lbPhanQuyen.Text = "Nhân viên";
                    lbAdminStaff.Text = "";
                }
                
            }
            else
            {
                Response.Redirect("login.aspx");

            }
        }
    }
}