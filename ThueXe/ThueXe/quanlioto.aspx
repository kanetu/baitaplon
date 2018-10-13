<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="quanlioto.aspx.cs" Inherits="ThueXe.quanlioto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <div class="col-6">
        <div class="row">
         <div class="col-12 grid-margin">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Thông tin tài xế</h4>
                      <form class="form-sample">
                    

                            <div class="form-group row">
                              <asp:Label ID="Label12" class="col-sm-3 col-form-label" for="exampleInputUsername1" runat="server" Text="Mã xe: "></asp:Label>
                              <div class="col-sm-9">
                               <asp:TextBox ID="txtmaxe" class="form-control" runat="server"></asp:TextBox>
                              </div>
                            </div>

                            <div class="form-group row">
                             <asp:Label ID="Label11" class="col-sm-3 col-form-label" for="exampleInputEmail1" runat="server" Text="Tên xe:"></asp:Label>
                              <div class="col-sm-9">
                                <asp:TextBox ID="txttenxe"  class="form-control" runat="server"></asp:TextBox>
                              </div>
                            </div>

                            <div class="form-group row">
                              <asp:Label ID="Label10" class="col-sm-3 col-form-label" for="exampleInputPassword1" runat="server" Text="Số ghế:"></asp:Label>
                              <div class="col-sm-9">
                                  <asp:TextBox ID="txtsoghe" class="form-control" runat="server"></asp:TextBox>
                              </div>
                            </div>

                            <div class="form-group row">
                            <asp:Label ID="Label8" class="col-sm-3 col-form-label" for="exampleInputConfirmPassword1" runat="server" Text="Trạng thái:"></asp:Label>
                              <div class="col-sm-9">
                                 <asp:DropDownList ID="Dltrangthai" class="form-control" runat="server">
                                     <asp:ListItem>Chưa thuê</asp:ListItem>
                                     <asp:ListItem>Đã thuê</asp:ListItem>
                                  </asp:DropDownList>
                              </div>
                            </div>
                            
                              <asp:Button ID="Button1" class="btn btn-gradient-primary mr-2" runat="server"  Text="Thêm" />
                              <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                      
                      </form>
                    </div>
                  </div>
                </div>
       </div>
    </div>
    <div class="col-6">
    <asp:GridView ID="dgv_xeoto" class="table table-striped table-bordered table-dark table-responsive"   runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="dgv_xeoto_RowCancelingEdit" OnRowDeleting="dgv_xeoto_RowDeleting" OnRowEditing="dgv_xeoto_RowEditing" OnRowUpdating="dgv_xeoto_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Mã xe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("MAOTO") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("MAOTO") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên xe">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TENOTO") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENOTO") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số ghế">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SOGHE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("SOGHE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Trạng thái">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TRANGTHAI") %>' ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TRANGTHAI") %>'></asp:Label>
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
      <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_dgv_xeoto').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      }
      );
    </script>
</asp:Content>
