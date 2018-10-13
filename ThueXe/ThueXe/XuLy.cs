using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace ThueXe
{
    public class XuLy
    {
        CSDLDataContext db = new CSDLDataContext();
      
        public List<HOPDONG> HienThiHD()
        {
            return db.HOPDONGs.ToList();
        }
        public IQueryable xemXeDaThue(string makh)
        {
            var kq = from xe in db.OTOs
                     from hd in db.HOPDONGs
                     from kh in db.KHACHHANGs
                     where xe.MAOTO == hd.MAOTO_F && hd.MAKH_F == makh && hd.MAKH_F == kh.MAKH
                     select new
                     {
                         hd.MAHD,
                         kh.MAKH,
                         xe.TENOTO,
                         xe.SOGHE,
                         hd.TIENTHUE,
                         hd.NGAYTHUE,
                         hd.NGAYTRA,
                         kh.TENKH
                     };
            return kq;
        }

        public IQueryable xemTXDaThue(string makh)
        {
            var kq = from xe in db.OTOs
                     from hd in db.HOPDONGs
                     from kh in db.KHACHHANGs
                     from tx in db.TAIXEs
                     where xe.MAOTO == hd.MAOTO_F && hd.MAKH_F == makh && hd.MAKH_F == kh.MAKH && hd.MATX_F == tx.MATX
                     select new
                     {
                         hd.MAHD,
                         tx.MATX,
                         tx.TENTX,
                         tx.SDT,
                         tx.DIACHI,
                         tx.CMND
                     };
            return kq;
        }
        public bool Login(string username, string pass)
        {
            var result = db.DANGNHAPs.Where(x => x.TAIKHOAN == username && x.MATKHAU == pass).ToList();
            if (result.Any())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DANGNHAP getInfo(string username, string pass)
        {
            DANGNHAP result = db.DANGNHAPs.Where(x => x.TAIKHOAN == username && x.MATKHAU == pass).FirstOrDefault();
            return result;
        }
        public List<KHACHHANG> xemkh()
        {
            return db.KHACHHANGs.ToList();
        }
        //xem thông tin xe
        public IQueryable xemxe()
        {
            var kq = from xe in db.OTOs
                     from hd in db.HOPDONGs
                     where xe.MAOTO == hd.MAOTO_F
                     select new
                     {
                         xe.MAOTO,
                         xe.TENOTO,
                         xe.SOGHE,
                         hd.TIENTHUE
                     };
            return kq;
        }
        // xem thông tin tài xế theo xe
        public IQueryable xemtaixe()
        {
            var taixe = from tx in db.TAIXEs

                        join hd in db.HOPDONGs
                        on tx.MATX equals hd.MATX_F

                        select new
                        {
                            tx.MATX,
                            tx.TENTX,
                            tx.CMND,
                            tx.SDT,
                            tx.DIACHI,

                            hd.DIADIEM,

                        };
            return taixe;
        }
        // Xem hợp đồng thuê xe
        public IQueryable xemhopdong()
        {
            var hopdong = from hd in db.HOPDONGs
                          join nv in db.NHANVIENs
                          on hd.MANV_F equals nv.MANV
                          join tx in db.TAIXEs
                          on hd.MATX_F equals tx.MATX
                          join kh in db.KHACHHANGs
                          on hd.MAKH_F equals kh.MAKH
                          join ot in db.OTOs
                          on hd.MAOTO_F equals ot.MAOTO
                          select new
                          {
                              hd.MAHD,
                              hd.TENHD,
                              hd.NGAYTHUE,
                              hd.NGAYTRA,
                              hd.TIENTHUE,
                              hd.DIADIEM,
                              tx.TENTX,
                              nv.TENNV,
                              kh.TENKH,
                              ot.TENOTO,

                          };
            return hopdong;
        }
        // có thể xem bằng store proc
        ///////////////////////////////////
        // ĐÂY LÀ PHẦN TÀI XẾ SỬ DỤNG
        public List<TAIXE> xemtx()
        {
            return db.TAIXEs.ToList();
        }

        // xem thông tin khách hàng theo xe
        public IQueryable xemkhtheoxe()
        {
            var xemkhx = from hd in db.HOPDONGs
                         join tx in db.TAIXEs
                         on hd.MATX_F equals tx.MATX
                         join kh in db.KHACHHANGs
                         on hd.MAKH_F equals kh.MAKH
                         select new
                         {
                             kh.MAKH,
                             kh.TENKH,
                             kh.SDT,
                             kh.DIACHI,
                             hd.MAHD,
                             hd.DIADIEM
                         };
            return xemkhx;
        }
        // xem hợp đồng gọi lại cái ở trên
        //// tới nhân viên coi như được cấp mọi quyền
        // lấy xem thông tin tất cả như cập nhật thông tin khách hàng


        // thêm khách hàng
        public bool themkh(String makh, String tenkh, String cmnd, String diachi, String sdt)
        {
            KHACHHANG kh = new KHACHHANG();
            kh.MAKH = makh;
            kh.TENKH = tenkh;
            kh.CMND = cmnd;
            kh.SDT = sdt;
            kh.DIACHI = diachi;
            db.KHACHHANGs.InsertOnSubmit(kh);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        //tìm khách hàng
        public List<KHACHHANG> timkh(string makh)
        {
            return db.KHACHHANGs.Where(k => k.MAKH == makh).ToList();
        }


        // sủa khách hàng
        public bool suakh(string makh, string tenkh, string cmnd, string diachi, string sdt)
        {
            var kh = new KHACHHANG();
            kh = db.KHACHHANGs.Where(k => k.MAKH == makh).FirstOrDefault();

            kh.TENKH = tenkh;
            kh.CMND = cmnd;
            kh.SDT = sdt;
            kh.DIACHI = diachi;

            try
            {

                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;

            }

        }
        // xóa khách hàng
        public bool xoakh(String makh)
        {
            KHACHHANG kh = db.KHACHHANGs.Where(k => k.MAKH == makh).FirstOrDefault();
            db.KHACHHANGs.DeleteOnSubmit(kh);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        // sủa ô tô
        public bool suaoto(string maoto, string tenoto, string soghe, string trangthai)
        {
            var kh = new OTO();
            kh = db.OTOs.Where(k => k.MAOTO == maoto).FirstOrDefault();

            kh.TENOTO = tenoto;
            kh.SOGHE = soghe;
            kh.TRANGTHAI = trangthai;

            try
            {

                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;

            }

        }
        // xóa ô tô
        public bool xoaoto(String maoto)
        {
            OTO oto = db.OTOs.Where(k => k.MAOTO == maoto).FirstOrDefault();
            db.OTOs.DeleteOnSubmit(oto);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        public List<NHANVIEN> danhsachnv()
        {
            return db.NHANVIENs.ToList();
        }

        public List<TAIXE> danhsachtx()
        {
            return db.TAIXEs.ToList();
        }

        public List<OTO> danhsachoto()
        {
            return db.OTOs.ToList();
        }

        public List<KHACHHANG> danhsachkh()
        {
            return db.KHACHHANGs.ToList();
        }

        ///////////////////////////////////////////////
        /// thêm hợp đồng
        public bool themhd(String mahd, String tenhd, DateTime ngaythue, DateTime ngaytra, String diadiem, float tienthue, String matx, String maoto, String makh, String manv)
        {
            HOPDONG hd = new HOPDONG();
            hd.MAHD = mahd;
            hd.NGAYTHUE = ngaythue;
            hd.TENHD = tenhd;
            hd.NGAYTRA = ngaytra;
            hd.TIENTHUE = tienthue;
            hd.DIADIEM = diadiem;
            hd.MAKH_F = makh;
            hd.MANV_F = manv;
            hd.MAOTO_F = maoto;
            hd.MATX_F = matx;
            db.HOPDONGs.InsertOnSubmit(hd);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }

        public void kichhoatxethue(String maoto)
        {
            OTO oto = db.OTOs.Where(x => x.MAOTO == maoto).First();
            oto.TRANGTHAI = "Đã được thuê";
            db.SubmitChanges();

        }
        // tìm hợp đồng theo mã
        public HOPDONG timmahd(String mahd)
        {
            return db.HOPDONGs.Where(h => h.MAHD == mahd).FirstOrDefault();
        }
        // sửa hợp doofn
        public bool suahd(String mahd, String tenhd, DateTime ngaythue, DateTime ngaytra, String diadiem, float tienthue, String matx, String maoto, String makh, String manv)
        {
            HOPDONG hd = db.HOPDONGs.Where(h => h.MAHD == mahd).FirstOrDefault();
            hd.NGAYTHUE = ngaythue;
            hd.TENHD = tenhd;
            hd.NGAYTRA = ngaytra;
            hd.DIADIEM = diadiem;
            hd.TIENTHUE = tienthue;

            hd.MAKH_F = makh;
            hd.MANV_F = manv;
            hd.MAOTO_F = maoto;
            hd.MATX_F = matx;
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        /// xóa hợp đồng
        public bool xoahd(String mahd)
        {
            HOPDONG hd = db.HOPDONGs.Where(h => h.MAHD == mahd).FirstOrDefault();
            db.HOPDONGs.DeleteOnSubmit(hd);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        // tính tổng thu

        public double tongtien(double t)
        {
            return t = db.HOPDONGs.Sum(k => k.TIENTHUE);
        }
        public bool themtx(String matx, String tentx, String cmnd, String diachi, String sdt)
        {
            TAIXE kh = new TAIXE();
            kh.MATX = matx;
            kh.TENTX = tentx;
            kh.CMND = cmnd;
            kh.SDT = sdt;
            kh.DIACHI = diachi;
            db.TAIXEs.InsertOnSubmit(kh);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        //tìm khách hàng
        public List<TAIXE> timtx(string matx)
        {
            return db.TAIXEs.Where(k => k.MATX == matx).ToList();
        }


        // sủa khách hàng
        public bool suatx(string matx, string tentx, string cmnd, string diachi, string sdt)
        {
            var kh = new TAIXE();
            kh = db.TAIXEs.Where(k => k.MATX == matx).FirstOrDefault();

            kh.TENTX = tentx;
            kh.CMND = cmnd;
            kh.SDT = sdt;
            kh.DIACHI = diachi;

            try
            {

                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;

            }

        }
        // xóa khách hàng
        public bool xoatx(String matx)
        {
            TAIXE kh = db.TAIXEs.Where(k => k.MATX == matx).FirstOrDefault();
            db.TAIXEs.DeleteOnSubmit(kh);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        public List<DANGNHAP> qltaikhoan()
        {
            return db.DANGNHAPs.ToList();
        }
        /// thêm tài khoản
        public bool themtk(String taikhoan, String matkhau, int quyen)
        {
            DANGNHAP d = new DANGNHAP();
            d.TAIKHOAN = taikhoan;
            d.MATKHAU = matkhau;
            d.QUYEN = quyen;
            db.DANGNHAPs.InsertOnSubmit(d);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
        public bool xoatk(String tk)
        {
            DANGNHAP dn = db.DANGNHAPs.Where(h => h.TAIKHOAN == tk).FirstOrDefault();
            db.DANGNHAPs.DeleteOnSubmit(dn);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;

            }
            return true;
        }
    }
}
