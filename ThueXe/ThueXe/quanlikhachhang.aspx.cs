using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ThueXe
{
    public partial class quanlikhachhang : System.Web.UI.Page
    {
        XuLy xl = new XuLy();
        public void hienthi()
        {
            gdv_KH.DataSource = xl.xemkh();
            gdv_KH.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                hienthi();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool them;
            them = xl.themkh(txtma.Text, txtten.Text, txb.Text, txtdc.Text, txtsdt.Text);
            if (them)
            {
                Label7.Text = "Thêm thành công";
                hienthi();
            }
            else
            {
                Label7.Text = "không thể Thêm ";
            }
        }





        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string makh = e.Values["MAKH"].ToString();
            bool xoa;
            xoa = xl.xoakh(makh);
            if (xoa)
            {
                Label7.Text = "xóa thành công!";
                hienthi();

            }
            else
            {
                Label7.Text = "không thể xóa! ";

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gdv_KH.EditIndex = e.NewEditIndex;
            hienthi();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gdv_KH.EditIndex = -1;
            hienthi();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string ma = e.NewValues["MAKH"].ToString();
            string ten = e.NewValues["TENKH"].ToString();

            string scmnd = e.NewValues["CMND"].ToString();
            string dc = e.NewValues["DIACHI"].ToString();
            string dt = e.NewValues["SDT"].ToString();
            bool sua;
            sua = xl.suakh(ma, ten, scmnd, dc, dt);
            if (sua)
            {

                Response.Write("<script> alert('Sua thanh cong!'); </script>");
                hienthi();

            }
            else
            {
                Response.Write("<script> alert('Sua KHONG thanh cong!'); </script>");

            }
        }

        protected void gdv_KH_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string ma = e.NewValues["MAKH"].ToString();
            string ten = e.NewValues["TENKH"].ToString();
            string scmnd = e.NewValues["CMND"].ToString();
            string dc = e.NewValues["DIACHI"].ToString();
            string dt = e.NewValues["SDT"].ToString();
            bool sua;

            sua = xl.suakh(ma, ten, scmnd, dc, dt);
            if (sua)
            {

                Response.Write("<script> alert('Sua thanh cong!'); </script>");
                gdv_KH.EditIndex = -1;
                hienthi();

            }
            else
            {
                Response.Write("<script> alert('Sua KHONG thanh cong!'); </script>");

            }
        }

        
    }
}