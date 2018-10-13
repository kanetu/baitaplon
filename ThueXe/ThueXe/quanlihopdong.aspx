<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="quanlihopdong.aspx.cs" Inherits="ThueXe.quanlihopdong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="table-overflow-scroll">
    <asp:GridView ID="dgv_hopdong" class="table table-striped table-bordered table-dark table-responsive" style="width:100%" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="dgv_hopdong_RowCancelingEdit" OnRowDeleting="dgv_hopdong_RowDeleting" OnRowEditing="dgv_hopdong_RowEditing" OnRowUpdating="dgv_hopdong_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Mã hợp đồng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("MAHD") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("MAHD") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên hợp đồng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TENHD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENHD") %>'></asp:Label>
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
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("NGAYTRA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("NGAYTRA") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa điểm">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("DIADIEM") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("DIADIEM") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tiền thanh toán">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("TIENTHUE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("TIENTHUE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên tài xế nhận xe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("TENTX") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("TENTX") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên khách hàng thuê">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("TENKH") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("TENKH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên nhân viên lập hợp đồng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("TENNV") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("TENNV") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên xe được thuê">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENOTO") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENOTO") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete"  Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
      </div>
     </div>  
        
    <div class="row">
    <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Bước 1</h4>
                  <p class="card-description">
                    Nhập thông tin cơ bản.
                  </p>
                  
                    <div class="form-group">
                      <asp:Label ID="Label12" runat="server" Text="Mã hợp đồng: "></asp:Label>
                      <asp:TextBox ID="matxt" class="form-control" runat="server"></asp:TextBox>
                  </div>
                    <div class="form-group">
                      <asp:Label ID="Label13" runat="server" Text="Tên hợp đồng: "></asp:Label>
                      <asp:TextBox ID="tentxt" class="form-control" runat="server"></asp:TextBox>
                  </div>
                    <div class="form-group">
                      <asp:Label ID="Label14" runat="server" Text="Địa điểm đến:"></asp:Label>
                      <asp:TextBox ID="ddtxt" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <asp:Label ID="Label15" runat="server" Text="Tiền thanh toán:"></asp:Label>
                      <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text bg-gradient-primary text-white">VNĐ</span>
                      </div>
                      <asp:TextBox ID="tientxt" class="form-control" runat="server"></asp:TextBox>
                      <div class="input-group-append">
                        <span class="input-group-text">.00</span>
                      </div>
                    </div>
                      
                  </div>
                </div>
              </div>
            </div>
    <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Bước 2</h4>
                  <p class="card-description">
                    Chọn ngày bắt đầu và ngày kết thúc hợp đồng.
                  </p>
                  
                    
                    <div class="form-group">
                      <asp:Label ID="Label24" runat="server" Text="Ngày thuê:"></asp:Label>
                      <asp:Calendar ID="ngaythuecal" class="form-control" runat="server"></asp:Calendar>
                  </div>
                    <div class="form-group">
                      <asp:Label ID="Label25"  runat="server" Text="Ngày trả:"></asp:Label>
                      <asp:Calendar ID="Calendar1" class="form-control" runat="server"></asp:Calendar>
                  </div>
                  
                </div>
              </div>
            </div>
    <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Bước 3</h4>
                  <p class="card-description">
                    Hoàn chỉnh hợp đồng các bên.
                  </p>
                  
                    
                  <div class="form-group">
                      <asp:Label ID="Label26" runat="server" Text="Nhân viên lập hợp đồng: "></asp:Label>
                        <asp:DropDownList ID="Dlnhanven" class="form-control" runat="server"></asp:DropDownList>
                  </div>
                   <div class="form-group">
                      <asp:Label ID="Label27" runat="server" Text="Khách hàng đặt hợp đồng: "></asp:Label>
                      <asp:DropDownList ID="Dlkhach" class="form-control" runat="server"></asp:DropDownList>
                  </div>
                  <div class="form-group">
                      <asp:Label ID="Label28" runat="server" Text="Chọn tài xế:"></asp:Label>
                      <asp:DropDownList ID="Dltaixe" class="form-control" runat="server"></asp:DropDownList>
                  </div>
                  <div class="form-group">
                      <asp:Label ID="Label29" runat="server" Text="Chọn xe :"></asp:Label>
                      <asp:DropDownList ID="Dlotto" class="form-control" runat="server"></asp:DropDownList>
                  </div>
                   
                  <asp:Button ID="them" class="btn btn-gradient-primary mr-2" runat="server" OnClick="them_Click" Text="Thêm" />
                </div>
              </div>
            </div>
    </div>
    <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_dgv_hopdong').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      }
      );
    </script>
</asp:Content>
