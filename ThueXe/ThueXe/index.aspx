<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ThueXe.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <!-- Phần Tìm kiếm xe -->
        <div class="row" id="div-tim-xe">
            
            <form>
                <legend><h2 class="text-center">Xem hợp đồng xe đã thuê</h2></legend>
                <div class="col-md-10">
                  <label class="sr-only" for="inlineFormInputGroupUsername">Mã khách hàng</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <div class="input-group-text">#</div>
                    </div>
                      <asp:TextBox ID="txbMaKH" runat="server" class="form-control" placeholder="Mã khách hàng"></asp:TextBox>
                  </div>
                </div>
                <asp:Button ID="btnTim" class="btn btn-primary mb-2 btn-height-50" runat="server" Text="Tìm ngay" OnClick="btnTim_Click" />
            </form>
        </div>
        <div class="row">
            <div class="col-md-12">
                  <asp:GridView ID="dgvXemXeDaThue" class="table table-dark table-striped" style="width:100%" runat="server" AutoGenerateColumns="False">
                      <Columns>
                          <asp:TemplateField HeaderText="Mã HĐ">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("MAHD") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label8" runat="server" Text='<%# Bind("MAHD") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Mã KH">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("MAKH") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label7" runat="server" Text='<%# Bind("MAKH") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Tên Xe">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("TENOTO") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label6" runat="server" Text='<%# Bind("TENOTO") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Số ghế">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SOGHE") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("SOGHE") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Tiền thanh toán">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TIENTHUE") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Bind("TIENTHUE") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Ngày thuê">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("NGAYTHUE") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Bind("NGAYTHUE") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Ngày trả">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("NGAYTRA") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("NGAYTRA") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Tên khách hàng">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENKH") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENKH") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                  </asp:GridView>
                <asp:GridView ID="dgvTaixe"  class="table table-dark table-striped" style="width:100%" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Mã HĐ">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("MAHD") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MAHD") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mã tài xế">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MATX") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("MATX") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên tài xế">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TENTX") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("TENTX") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SĐT">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SDT") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("SDT") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Địa chỉ">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CMND">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CMND") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("CMND") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                  </asp:GridView>
            </div>
        </div>
        <!--Phần card -->
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" src="assets/img/gioithieu.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">#Giới thiệu</h5>
                    <p class="card-text">Công ty đã cho thuê hàng ngàn chuyến xe khắp toàn quốc đi tham quan, du lịch, cưới hỏi, công tác…tạo sự thuận tiện cho khách hàng khi có nhu cầu thuê xe đi lại. Với phương châm tất cả vì Khách hàng, chúng tôi không ngừng nâng cao chất lượng dịch vụ của mình, từ việc chọn những chiếc xe đời mới, chọn...</p>
                    <a href="#" class="btn btn-primary">Xem chi tiết</a>
                  </div>
                </div>
                <!--Card -->
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" src="assets/img/lienhe.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">#Liên hệ</h5>
                    <p class="card-text">Công ty TNHH THƯƠNG MẠI - DỊCH VU HSN VIỆT NAM.<br /> Địa chỉ: 129/10i Cao Đạt, Phường 1, Quận 5, Tp.HCM.<br /> Email: hsn@gmail.com.<br />Số điện thoại: 08665647179<br />Website: http://www.hsntravel.com/ <br />Mọi chi tiết xin liên hệ trực tiếp vào điện thoại </p>
                    <a href="#" class="btn btn-primary">Xem chi tiết</a>
                  </div>
                </div>
                <!--Card -->
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                  <img class="card-img-top" src="assets/img/thuexe.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">#Thuê xe</h5>
                    <p class="card-text">Cho thuê xe chuyên nghiệp và uy tín – gía tốt nhất thị trường từ 4-7-16-29-35-45 chổ cho thuê xe tháng – cho thuê xe tự lái cho thuê xe tham quan du lịch - cho thuê xe đi công tác cho thuê xe đưa đón sân bay - cho thuê xe cưói hỏi đặc biệt cho thuê xe cao cấp phục vụ các nhà ngoại giao và đại sứ quán các nước..</p>
                    <a href="#" class="btn btn-primary">Đặt xe</a>
                  </div>
                </div>
                <!--Card -->
            </div>
        </div>
    </div>
</asp:Content>
