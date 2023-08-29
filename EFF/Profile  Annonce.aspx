<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile  Annonce.aspx.cs" Inherits="EFF.Profile__Annonce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
</head>
<body>
    <form method="post" runat="server" >
        <nav class="navbar navbar-light navbar-expand bg-light navigation-clean">
            <div class="container">
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"></button>
                <img src="assets/img/emploi_3.jpg" style="width: 184px; margin: -3px; height: 67.1719px; padding: -11px;">

                <div class="collapse navbar-collapse" id="navcol-1">

                    <a class="btn btn-primary " role="button" href="mes annonces.aspx" style="transform: translate(647px);">Mes annonces</a>
                    <asp:Button class="btn btn-primary " ID="Button1" runat="server" Text="Déconnecter" OnClick="Button1_Click" />

                </div>
            </div>
        </nav>
        <header class="text-center text-white masthead" style="background: url('assets/img/bg-masthead.jpg')no-repeat center center; background-size: cover;">
            <h1 class="text-capitalize mb-5" style="color: var(--gray-dark); transform: translateY(-125px);">Profile&nbsp; Annonce

            </h1>

            <div class="row">
                <div class="col-4">
                    <div class="card" style="width: 18rem; margin-left: 155px;">
                        <asp:Image ID="logoimg" runat="server" ImageUrl="" class="card-img-top" />
                    </div>
                </div>
                <div class="col-8">

                    <div class="form-group">
                        <label>Ref :</label>
                        <asp:Label ID="ref" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Raison Soscial :</label>
                        <asp:Label ID="RaisonSoscial" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Email :</label>
                        <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Date creation :</label>
                        <asp:Label ID="Datecreation" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Téléphone :</label>
                        <asp:Label ID="Téléphone" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Adresse :</label>
                        <asp:Label ID="Adresse" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Forme Juridique :</label>
                        <asp:Label ID="FormeJuridique" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Présentation :</label>
                        <asp:Label ID="Présentation" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Demaine de Travail :</label>
                        <asp:Label ID="DemainedeTravail" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>


        </header>
        <footer class="text-center text-white call-to-action" style="padding: 7px 0px; background: var(--white);">
            <ul class="list-inline mb-0" style="transform: translateY(21px); font-size: 28px;">
                <li class="list-inline-item"><a href="#"><i class="fa fa-facebook fa-2x fa-fw"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter fa-2x fa-fw"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram fa-2x fa-fw"></i></a></li>
            </ul>
            <p class="text-capitalize text-black-50 copyright" style="font-size: 22px; transform: translateY(21px); color: rgba(0, 0, 0, 0.5);">Company Name © 2021</p>
        </footer>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
