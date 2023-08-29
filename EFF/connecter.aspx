<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connecter.aspx.cs" Inherits="EFF.connecter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
</head>
<body>
    <nav class="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div class="container">
            <img src="assets/img/emploi_3.jpg" style="width: 184px; margin: -3px; height: 67.1719px; padding: -11px;">
            <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <button class="btn btn-primary" type="button" style="transform: translate(750px);">S'inscrire</button><a class="btn btn-primary ml-auto" role="button" href="#">Connecter</a>
            </div>
        </div>
    </nav>
    <header class="text-center text-white masthead" style="background: url('assets/img/bg-masthead.jpg')no-repeat center center; background-size: cover;">
        <div class="form-group">
            <h1 class="text-capitalize text-center mb-5" style="color: var(--gray-dark); transform: translateY(-59px);">Connecter&nbsp; votre&nbsp; Compte</h1>
        </div>
        <form class="form-signin" style="transform: translateY(0px);" runat="server">
            <div class="login-card" style="max-width: 544px !important;">
                <img class="profile-img-card" src="assets/img/avatar_2x.png">
                <div class="form-group">
                    <asp:DropDownList Style="width: 270px; height: 44px;" ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Admnistrateur">Administrateur</asp:ListItem>
                        <asp:ListItem>Annonceur</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:TextBox class="form-control" type="text" ID="Login" required="" placeholder="Login" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox class="form-control" type="password" ID="password" required="" placeholder="password" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" class="btn btn-primary btn-lg btn-block" Style=" background: var(--primary);" runat="server" Text="Connecter" OnClick="Button1_Click" />
                </div>
                <div class="alert alert-danger" role="alert" id="alert" runat="server">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </form>

    </header>
    <footer class="text-center text-white call-to-action" style="border-width: 0px; padding: 7px 0px; background: var(--white); font-size: 6px;">
        <ul class="list-inline text-center mb-0" style="transform: translateY(21px); border-radius: 0px; font-size: 29px;">
            <li class="list-inline-item"><a href="#"><i class="fa fa-facebook fa-2x fa-fw" style="background: var(--white);"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter fa-2x fa-fw" style="background: var(--white); color: var(--blue);"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa fa-instagram fa-2x fa-fw" style="background: var(--white); color: var(--blue); border-color: var(--blue); font-size: 61px;"></i></a></li>
        </ul>
        <p class="text-capitalize text-black-50 copyright" style="font-size: 22px; transform: translateY(21px); color: rgba(0, 0, 0, 0.5);">Company Name © 2021</p>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
