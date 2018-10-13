<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ThueXe.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
      <!-- plugins:css -->
      <link rel="stylesheet" href="../../vendors/iconfonts/mdi/css/materialdesignicons.min.css">
      <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
      <!-- endinject -->
      <!-- plugin css for this page -->
      <!-- End plugin css for this page -->
      <!-- inject:css -->
      <link rel="stylesheet" href="../../css/style.css">
      <!-- endinject -->
      <link rel="shortcut icon" href="../../images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
              <div class="brand-logo">
                <img src="../../images/logo.svg"/>
              </div>
              <h4>Hello! let's get started</h4>
              <h6 class="font-weight-light">Sign in to continue.</h6>
              <form class="pt-3">
                <div class="form-group">
                  <asp:TextBox ID="txbUsername" class="form-control form-control-lg" placeholder="Username" runat="server"></asp:TextBox>

                </div>
                <div class="form-group">
                  <asp:TextBox ID="txbPassword" TextMode="Password" class="form-control form-control-lg" placeholder="Password" runat="server"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <asp:Button ID="btnLogin" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="SIGN IN" OnClick="btnLogin_Click" />
                  
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
 
  <!-- endinject -->
        </div>
    </form>
     <!-- plugins:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <script src="../../vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/misc.js"></script>
</body>
</html>
