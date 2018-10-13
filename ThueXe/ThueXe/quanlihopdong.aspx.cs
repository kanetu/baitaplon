using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ThueXe
{
    public partial class quanlihopdong : System.Web.UI.Page
    {
        
        XuLy xl = new XuLy();
        CSDLDataContext db = new CSDLDataContext();
        public void hienthi()
        {
            dgv_hopdong.DataSource = xl.xemhopdong();
            dgv_hopdong.DataBind();
        }
        public void loadnhanvien()
        {
            Dlnhanven.DataSource = xl.danhsachnv();
            Dlnhanven.DataValueField = "MANV";
            Dlnhanven.DataTextField = "TENNV";
            Dlnhanven.DataBind();
        }
        public void loadkhach()
        {
            Dlkhach.DataSource = xl.danhsachkh();
            Dlkhach.DataValueField = "MAKH";
            Dlkhach.DataTextField = "TENKH";
            Dlkhach.DataBind();
        }
        public void loadtaixe()
        {
            Dltaixe.DataSource = xl.danhsachtx();
            Dltaixe.DataValueField = "MATX";
            Dltaixe.DataTextField = "TENTX";
            Dltaixe.DataBind();
        }
        public void loadot()
        {
            Dlotto.DataSource = xl.danhsachoto();
            Dlotto.DataValueField = "MAOTO";
            Dlotto.DataTextField = "TENOTO";
            Dlotto.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                hienthi();
                loadnhanvien();
                loadkhach();
                loadot();
                loadtaixe();
            }
        }

        protected void them_Click(object sender, EventArgs e)
        {
            bool them;
            them = xl.themhd(matxt.Text, tentxt.Text, DateTime.Parse(ngaythuecal.SelectedDate.ToShortDateString()), DateTime.Parse(Calendar1.SelectedDate.ToShortDateString()), ddtxt.Text, float.Parse(tientxt.Text), Dltaixe.SelectedValue, Dlotto.SelectedValue, Dlkhach.SelectedValue, Dlnhanven.SelectedValue);
            if (them)
            {
                xl.kichhoatxethue(Dlotto.SelectedValue);
                hienthi(); 
            }
            else
            {
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void dgv_hopdong_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv_hopdong.EditIndex = e.NewEditIndex;
            hienthi();
        }

        protected void dgv_hopdong_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv_hopdong.EditIndex = -1;
            hienthi();
        }

        protected void dgv_hopdong_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String mahd = e.NewValues["MAHD"].ToString();
            String tenhd = e.NewValues["TENHD"].ToString();
            DateTime ngaythue = Convert.ToDateTime(e.NewValues["NGAYTHUE"].ToString());
            DateTime ngaytra = Convert.ToDateTime(e.NewValues["NGAYTRA"].ToString());
            String diadiem = e.NewValues["DIADIEM"].ToString();
            float tienthue = float.Parse(e.NewValues["TIENTHUE"].ToString());
            String matx = Dltaixe.SelectedValue;
            String maoto = Dlotto.SelectedValue;
            String makh = Dlkhach.SelectedValue;
            String manv = Dlnhanven.SelectedValue;

            bool sua = xl.suahd(mahd, tenhd, ngaythue, ngaytra, diadiem, tienthue, matx, maoto, makh, manv);
            if (sua)
            {

                Response.Write("<script> alert('Sua thanh cong!'); </script>");
                dgv_hopdong.EditIndex = -1;
                hienthi();

            }
            else
            {
                Response.Write("<script> alert('Sua KHONG thanh cong!'); </script>");

            }
        }

        protected void dgv_hopdong_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string ma = e.Values["MAHD"].ToString();
            bool xoa;
            xoa = xl.xoahd(ma);
            if (xoa)
            {
                hienthi();

            }
            else
            {

            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            tentxt.Text = "";
            matxt.Text = "";
            ddtxt.Text = "";
            tientxt.Text = "";
            hienthi();
        }

        
    }
}