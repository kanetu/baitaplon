<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="quanlitaikhoan.aspx.cs" Inherits="ThueXe.quanlitaikhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Thêm mới tài khoản</h4>
                    <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Tài khoản:"></asp:Label>
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                  </div>
                    <div class="form-group">
                      <asp:Label ID="Label1" runat="server" Text="Mật khẩu:"></asp:Label>
                      <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                  </div>
                  <asp:Button ID="Button1" class="btn btn-gradient-primary mr-2" runat="server" OnClick="Button1_Click" Text="Thêm" />
                  <asp:Label ID="Label3" runat="server"></asp:Label>
                </div>
              </div>
            </div>
        <div class="col-md-6">
            <asp:GridView ID="GridView1" class="table table-striped table-bordered table-dark" style="width:100%" runat="server" AllowSorting="True" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="TAIKHOAN" HeaderText="Tài khoản" />
                <asp:BoundField DataField="QUYEN" HeaderText="Quyền" />
                <asp:CommandField DeleteText="xóa" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        </div>
    </div>
        
    

        
        

        


    <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_GridView1').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      }
      );
    </script>
</asp:Content>
