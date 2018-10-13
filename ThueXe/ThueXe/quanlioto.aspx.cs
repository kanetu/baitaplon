using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ThueXe
{
    public partial class quanlioto : System.Web.UI.Page
    {
        XuLy xl = new XuLy();
        public void hienthi()
        {
            dgv_xeoto.DataSource = xl.danhsachoto();
            dgv_xeoto.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                hienthi();
            }
        }
        protected void dgv_xeoto_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv_xeoto.EditIndex = e.NewEditIndex;
            hienthi();
        }

        protected void dgv_xeoto_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv_xeoto.EditIndex = -1;
            hienthi();
        }

        protected void dgv_xeoto_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String maoto = e.NewValues["MAOTO"].ToString();
            String tenoto = e.NewValues["TENOTO"].ToString();
            
            String soghe = e.NewValues["SOGHE"].ToString();
            String trangthai = e.NewValues["TRANGTHAI"].ToString();


            bool sua = xl.suaoto(maoto, tenoto, soghe, trangthai);
            if (sua)
            {

                Response.Write("<script> alert('Sua thanh cong!'); </script>");
                dgv_xeoto.EditIndex = -1;
                hienthi();

            }
            else
            {
                Response.Write("<script> alert('Sua KHONG thanh cong!'); </script>");

            }
        }

        protected void dgv_xeoto_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string ma = e.Values["MAOTO"].ToString();
            bool xoa;
            xoa = xl.xoaoto(ma);
            if (xoa)
            {
                hienthi();

            }
            else
            {

            }
        }
    }
}