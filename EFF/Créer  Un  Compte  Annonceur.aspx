<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Créer  Un  Compte  Annonceur.aspx.cs" Inherits="EFF.Créer__Un__Compte__Annonceur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
</head>
<body>
<nav class="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div class="container">
            <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"></button><img src="assets/img/emploi_3.jpg" style="width: 184px;margin: -3px;height: 67.1719px;padding: -11px;">
            <div class="collapse navbar-collapse" id="navcol-1"><button class="btn btn-primary" type="button" style="transform: translate(882px);">Connecter</button><a class="btn btn-primary ml-auto" role="button" href="#" style="transform: translate(-101px);">S'inscrire</a></div>
        </div>
    </nav>
    <header class="text-white masthead" style="background: url('assets/img/bg-masthead.jpg')no-repeat center center;background-size: cover;padding: -16px 0px;height: 1433px;">
        <section class="contact-clean" style="background: url(&quot;assets/img/bg-masthead.jpg&quot;) center;padding-bottom: 0px;height: 895px;">
            <h1 class="text-capitalize mb-5" style="color: var(--gray-dark);transform: translateY(-188px);">Créer&nbsp; un&nbsp; Compte&nbsp; Annonceur</h1>
            <form runat="server" method="post" style="transform: translateY(-210px) translateZ(-58px);">
                <div class="form-group">
                    <label>Ref :</label>
                    <asp:TextBox ID="TextBoxRef" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Raison Soscial :</label>
                    <asp:TextBox ID="TextBoxRaisonSoscial" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Email :</label>
                    <asp:TextBox ID="TextBoxEmail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Date creation :</label>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </div>
                <div class="form-group">
                    <label>Téléphone :</label>
                    <asp:TextBox ID="TextBoxTéléphone" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Adresse :</label>
                    <asp:TextBox ID="TextBoxAdresse" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Forme Juridique :</label>
                    <asp:TextBox ID="TextBoxFormeJuridique" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Logo :</label>
                    <asp:FileUpload ID="FileUploadLogo" class="form-control-file" runat="server" />
                </div>
                <div class="form-group">
                    <label>Présentation :</label>
                    <asp:TextBox ID="TextBoxPrésentation" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Domaine de Travail :</label>
                    <asp:TextBox ID="TextBoxDomaineTravail" class="form-control" runat="server"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <label>Login :</label>
                    <asp:TextBox ID="TextBoxLogin" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Mot de passe :</label>
                    <asp:TextBox ID="TextBoxMotPasse" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server"  class="btn btn-primary text-capitalize" Text="S'inscrire" OnClick="Button1_Click" />
                </div>
            </form>
        </section>
    </header>
    <footer class="footer-dark" style="background: var(--white);color: var(--white);border-color: var(--white);">
        <ul class="list-inline text-center mb-0" style="transform: translateY(14px);border-radius: 0px;font-size: 29px;">
            <li class="list-inline-item"><a href="#"><i class="fa fa-facebook fa-2x fa-fw" style="background: var(--white);color: var(--blue);border-color: rgb(240, 249, 255);border-top-color: rgb(240,;border-right-color: 249,;border-bottom-color: 255);border-left-color: 249,;"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter fa-2x fa-fw" style="background: var(--white);color: var(--blue);"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa fa-instagram fa-2x fa-fw" style="background: var(--white);color: #055ada;"></i></a></li>
        </ul>
        <div class="container">
            <p class="text-capitalize text-dark copyright" style="font-size: 22px;">Company Name © 2021</p>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
