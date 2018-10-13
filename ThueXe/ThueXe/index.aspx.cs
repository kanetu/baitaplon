using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ThueXe
{
    public partial class index : System.Web.UI.Page
    {
        XuLy xl = new XuLy();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            dgvXemXeDaThue.DataSource = xl.xemXeDaThue(txbMaKH.Text);
            dgvXemXeDaThue.DataBind();

            dgvTaixe.DataSource = xl.xemTXDaThue(txbMaKH.Text);
            dgvTaixe.DataBind();

        }
    }
}