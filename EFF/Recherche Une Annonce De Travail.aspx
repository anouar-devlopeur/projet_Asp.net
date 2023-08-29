<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recherche Une Annonce De Travail.aspx.cs" Inherits="EFF.Recherche_Une_Annonce_De_Travail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
</head>
<body>
    <form runat="server">
        <nav class="navbar navbar-light navbar-expand bg-light navigation-clean">
            <div class="container">
                <img src="assets/img/emploi_3.jpg" style="width: 184px; margin: -3px; height: 67.1719px; padding: -11px;">
                <a href="Créer  Un  Compte  Annonceur.aspx" class="btn btn-primary"  style="transform: translate(267px);">S'inscrire</a>
                <a  href="connecter.aspx" class="btn btn-primary"  >Connecter</a>
                <button class="navbar-toggler" data-toggle="collapse"></button>
            </div>
        </nav>
        <header class="text-center text-white masthead" style="background: url('assets/img/bg-masthead.jpg')no-repeat center center; background-size: cover; padding: 88px 0px;">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <h1 class="text-capitalize mb-5" style="color: var(--gray-dark);">
                            <br>
                            Recherche Une Annonce De Travail<br>
                            <br>
                        </h1>
                    </div>
                    <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                        <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="form-row">
                                <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin: -62px; width: 488.734px;">
                                    <nav class="navbar navbar-light navbar-expand bg-white text-center text-sm-center text-md-center text-lg-center text-xl-center shadow-sm justify-content-center align-content-center align-self-center justify-content-lg-center mb-4 topbar static-top" style="width: 640px; margin: 106px; padding: 6px 16px; height: 59px; transform: translate(-58px) translateY(-58px);">
                                        <div class="container-fluid">
                                            <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop-1" type="button"><i class="fas fa-bars"></i></button>

                                            <div class="input-group">
                                                <input class="bg-light form-control border-0 small" type="text" placeholder="Rechercher ..." style="margin: -1px; padding: 11px 12px; width: 537px; height: 34px;">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button>
                                                </div>
                                            </div>

                                            <ul class="navbar-nav flex-nowrap ml-auto">
                                                <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#"><i class="fas fa-search"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" aria-labelledby="searchDropdown">

                                                        <div class="input-group">
                                                            <input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section class="text-center bg-light features-icons">
            <div class="container">
                <div class="row">

                    <asp:DataList ID="DataList1" runat="server" class="row" RepeatColumns="4">
                        <ItemTemplate>
                            <div class="text-center ml-auto" style="">
                                <div  style="padding: 6px;">
                                    <asp:Image class="rounded-circle img-fluid border rounded-0 mb-3" ImageUrl='<%# Eval("Logo") %>' ID="Image" Style="" runat="server" />
                                    <h5 style="    filter: brightness(100%);font-size: 20px;margin: -12px;padding-bottom: 14px;padding-top: 10px;">
                                        <asp:Label ID="lblTitre" runat="server" Text='<% #Eval("Titre") %>'></asp:Label>
                                    </h5>
                                </div>
                                <a href='<%# "~/detail annonce.aspx?ref="+ Eval("Ref") %>' class="btn btn-primary text-center" ID="Button1" runat="server" Style="margin: -36px; transform: translate(0px) translateY(11px) scale(1.01); height: 38px; padding: 4px 12px; font-size: 16px; text-align: center; border-radius: 11px; filter: brightness(102%);" >Consulter</a>

                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </section>

        <footer class="text-center text-white call-to-action" style="background: url(&quot;assets/img/bg-masthead.jpg&quot;) no-repeat center center; background-size: cover; transform: translateZ(147px); padding: 50px 0px;">
            <ul class="list-inline mb-0" style="font-size: 29px;">
                <li class="list-inline-item"><a href="#"><i class="fa fa-facebook fa-2x fa-fw"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter fa-2x fa-fw"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram fa-2x fa-fw"></i></a></li>
            </ul>
            <div class="col-lg-6 text-center text-lg-left my-auto h-100" style="transform: translate(441px) translateY(29px);">
                <ul class="list-inline mb-2" style="transform: translate(-29px);">
                    <li class="list-inline-item"><a class="text-dark" href="#" style="color: var(--gray-dark);">About</a></li>
                    <li class="list-inline-item"><span class="text-dark" style="color: var(--gray-dark);">⋅</span></li>
                    <li class="list-inline-item"><a class="text-dark" href="#" style="color: var(--gray-dark);">Contact</a></li>
                    <li class="list-inline-item"><span class="text-dark" style="color: var(--gray-dark);">⋅</span></li>
                    <li class="list-inline-item text-dark"><a href="#" style="color: var(--gray-dark);">Terms of &nbsp;Use</a></li>
                    <li class="list-inline-item"><span class="text-dark" style="color: var(--gray-dark);">⋅</span></li>
                    <li class="list-inline-item"><a class="text-dark" href="#" style="color: var(--gray-dark);">Privacy Policy</a></li>
                </ul>
                <p class="text-dark small mb-4 mb-lg-0" style="transform: translate(59px) translateY(0px);">© Brand 2021. All Rights Reserved.</p>
            </div>
        </footer>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
