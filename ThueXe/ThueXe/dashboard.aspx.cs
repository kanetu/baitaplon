using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThueXe
{
    public partial class dashboard : System.Web.UI.Page
    {
        XuLy xl = new XuLy();
        CSDLDataContext db = new CSDLDataContext();

        public void hienthi()
        {
            dgv_hopdong.DataSource = xl.xemhopdong();
            dgv_hopdong.DataBind();
        }
        public void thongkengay(DateTime ngay)
        {
            //GridView1.DataSource = db.pro_thongketienngay(ngay);
            //GridView1.DataBind();
        }
      
        
        protected void Page_Load(object sender, EventArgs e)
        {
            hienthi();
        }

        protected void reset_Click(object sender, EventArgs e)
        {

            DateTime ma = ngaythuecal.SelectedDate;
            if(ma.ToString() != "")
            {
                thongkengay(ma);
            }
        }

        
    }
}