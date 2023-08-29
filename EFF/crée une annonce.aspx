<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crée une annonce.aspx.cs" Inherits="EFF.crée_une_annonce" %>

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
</head>
<body>
   <nav class="navbar navbar-light navbar-expand bg-light navigation-clean">
        <div class="container"><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"></button><img src="assets/img/emploi_3.jpg" style="width: 184px;margin: -3px;height: 67.1719px;padding: -11px;">
            <div class="collapse navbar-collapse" id="navcol-1"><a class="btn btn-primary ml-auto" role="button" href="#">Déconnecter</a></div>
        </div>
    </nav>
    <header class="text-center text-white masthead" style="background: url(&quot;assets/img/bg-masthead.jpg&quot;), linear-gradient(black, white), #ffffff;background-size: cover, auto, auto;padding: 198px 0px;">
        <h1 class="text-capitalize mb-5" style="color: var(--gray-dark);transform: translateY(-174px);"><br>Créer&nbsp; Une&nbsp; Annonce</h1>
        <section class="contact-clean" style="background: url(&quot;assets/img/bg-masthead.jpg&quot;) center;transform: translateY(-37px);padding-bottom: 0px;height: 895px;">
            <form runat="server" method="post" style="transform: translateY(-210px) translateZ(-58px);">
                <div class="form-group">
                    <label for="Reference">Reference de l'annonce</label>
                     <asp:TextBox ID="TextBoxReference" class="form-control" runat="server"></asp:TextBox>
                        
                </div>
                <div class="form-group">
                    <label for="Titre">Titre</label>  
                     <asp:TextBox ID="TextBoxTitre" class="form-control" runat="server"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label for="DateDébut">Date Début</label>
                     <asp:TextBox ID="TextBoxDateDébut"  TextMode="Date"  class="form-control" runat="server"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label for="DateFin">Date Fin</label>
                     <asp:TextBox ID="TextBoxDateFin"  TextMode="Date"  class="form-control" runat="server"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label for="ProfilRecherché">Profil recherché</label>
                     <asp:TextBox ID="TextBoxProfilRecherché" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="Description">Description du poste</label>
                     <asp:TextBox ID="TextBoxDescription"   class="form-control" runat="server"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label for="Piéces">Piéces demandés</label>
                     <asp:TextBox ID="TextBoxPiéces" class="form-control" runat="server"></asp:TextBox>
                    
                </div>
                <asp:Button class="btn btn-lg btn-primary" ID="Button1" runat="server" Text="Publier l'annonce" OnClick="Button1_Click" />
            </form>
        </section>
    </header>
    <footer class="text-center text-white call-to-action" style="padding: 7px 0px;background: var(--white);">
        <ul class="list-inline mb-0" style="transform: translateY(21px);font-size: 29px;padding: -14px;">
            <li class="list-inline-item"><a href="#"><i class="fa fa-facebook fa-2x fa-fw"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter fa-2x fa-fw"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa fa-instagram fa-2x fa-fw"></i></a></li>
        </ul>
        <p class="text-capitalize text-black-50 copyright" style="font-size: 22px;transform: translate(0px) translateY(21px);color: rgba(0, 0, 0, 0.5);">Company Name © 2021</p>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
