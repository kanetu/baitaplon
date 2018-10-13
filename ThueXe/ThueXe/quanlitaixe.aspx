<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="quanlitaixe.aspx.cs" Inherits="ThueXe.quanlitaixe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-md-12">

    <asp:GridView ID="gdv_KH" class="table table-striped table-bordered table-dark" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="gdv_KH_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Mã tài xế">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MATX") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MATX") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên tài xế">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TENTX") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENTX") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số CMND">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CMND") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CMND") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa chỉ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số điện thoại">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SDT") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("SDT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        
        
        </div>
    </div>
    <div class="row">
     <div class="col-12 grid-margin mt-3">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Thông tin tài xế</h4>
                  <form class="form-sample">
                    
                    <div class="row">

                      <div class="col-md-6">
                        <div class="form-group row">
                          <asp:Label ID="Label12" class="col-sm-3 col-form-label" for="exampleInputUsername1" runat="server" Text="Mã tài xế: "></asp:Label>
                          <div class="col-sm-9">
                           <asp:TextBox ID="txtma" class="form-control" runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group row">
                         <asp:Label ID="Label11" class="col-sm-3 col-form-label" for="exampleInputEmail1" runat="server" Text="Tên tài xế:"></asp:Label>
                          <div class="col-sm-9">
                            <asp:TextBox ID="txtten"  class="form-control" runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>

                    </div>
                    <div class="row">
                       <div class="col-md-6">
                        <div class="form-group row">
                          <asp:Label ID="Label10" class="col-sm-3 col-form-label" for="exampleInputPassword1" runat="server" Text="Số điện thoại:"></asp:Label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="txtsdt" class="form-control" runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>

                       <div class="col-md-6">
                        <div class="form-group row">
                        <asp:Label ID="Label8" class="col-sm-3 col-form-label" for="exampleInputConfirmPassword1" runat="server" Text="Số CMND:"></asp:Label>
                          <div class="col-sm-9">
                             <asp:TextBox ID="txtcm" class="form-control" runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                       <div class="col-md-6">
                        <div class="form-group row">
                          <asp:Label ID="Label6" class="col-sm-3 col-form-label" for="exampleInputPassword1" runat="server" Text="Địa chỉ:"></asp:Label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="txtdc" class="form-control" runat="server"></asp:TextBox>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                          <asp:Button ID="Button1" class="btn btn-gradient-primary mr-2" runat="server" OnClick="Button1_Click" Text="Thêm" />
                          <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                      </div>
                    </div>
                      
                  </form>
                </div>
              </div>
            </div>
   </div>
        
    <script type="text/javascript">
      $(function () {
            $('#ContentPlaceHolder1_gdv_KH').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
      });
    </script>
</asp:Content>
