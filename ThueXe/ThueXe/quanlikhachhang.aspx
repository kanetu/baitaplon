<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="quanlikhachhang.aspx.cs" Inherits="ThueXe.quanlikhachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table-overflow-scroll">
    <asp:GridView ID="gdv_KH" class="table table-striped table-bordered table-dark" style="width:100%" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="gdv_KH_RowUpdating" Width="377px">
            <Columns>
                
                <asp:TemplateField HeaderText="MaKH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Text='<%# Bind("MAKH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MAKH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TenKH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TENKH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENKH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ChungMinh">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CMND") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CMND") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DiaChi">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SDT">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SDT") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("SDT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
                <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
            </Columns>
     </asp:GridView>
     </div>

    <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Thông tin khách hàng</h4>
                  <form class="form-sample">
                    
                    <div class="row">

                      <div class="col-md-6">
                        <div class="form-group ">
                          <asp:Label ID="Label12" class=" col-form-label mb-1" for="exampleInputUsername1" runat="server" Text="Mã khách hàng: "></asp:Label>
                           <asp:TextBox ID="txtma" class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group ">
                         <asp:Label ID="Label11" class=" col-form-label mb-1" for="exampleInputEmail1" runat="server" Text="Tên khách hàng:"></asp:Label>
                            <asp:TextBox ID="txtten"  class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>

                    </div>
                    <div class="row">
                       <div class="col-md-6">
                        <div class="form-group ">
                          <asp:Label ID="Label10" class=" col-form-label mb-1" for="exampleInputPassword1" runat="server" Text="Số điện thoại:"></asp:Label>
                              <asp:TextBox ID="txtsdt" class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>

                       <div class="col-md-6">
                        <div class="form-group ">
                        <asp:Label ID="Label8" class=" col-form-label mb-1" for="exampleInputConfirmPassword1" runat="server" Text="Số CMND:"></asp:Label>
                             <asp:TextBox ID="txb" class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                       <div class="col-md-6">
                        <div class="form-group ">
                          <asp:Label ID="Label6" class=" col-form-label mb-1" for="exampleInputPassword1" runat="server" Text="Địa chỉ:"></asp:Label>
                              <asp:TextBox ID="txtdc" class="form-control" runat="server"></asp:TextBox>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group ">
                          <asp:Button ID="Button1" class="btn btn-gradient-primary mr-2 mt-3"  runat="server" OnClick="Button1_Click" Text="Thêm" />
                          <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                        </div>
                       </div>
                    </div>
                      
                  </form>
                </div>
              </div>
            </div>
   <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_gdv_KH').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      }
      );
    </script>
    
</asp:Content>
