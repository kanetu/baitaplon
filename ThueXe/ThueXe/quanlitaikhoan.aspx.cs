using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThueXe
{
    public partial class quanlitaikhoan : System.Web.UI.Page
    {
        XuLy xl = new XuLy();
       
        public void hienthi()
        {
            GridView1.DataSource = xl.qltaikhoan();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["phanquyen"] != null)
            {
                if(int.Parse(Session["phanquyen"].ToString()) != 1)
                {
                    Response.Redirect("dashboard.aspx");
                }
            }
            hienthi();
        }
        public void themdangnhap()
        {
            bool them;
            them = xl.themtk(TextBox1.Text, TextBox2.Text, 2);
            if (them)
            {
                Label3.Text = "Thêm thành công";

                hienthi(); ;

            }
            else
            {
                Label3.Text = "không thể Thêm ";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            themdangnhap();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string tk = e.Values["TAIKHOAN"].ToString();
            bool xoa;
            xoa = xl.xoatk(tk);
            if (xoa)
            {
                Label3.Text = "xóa thành công!";
                hienthi();

            }
            else
            {
                Label3.Text = "không thể xóa! ";
            }
        }
    }
}