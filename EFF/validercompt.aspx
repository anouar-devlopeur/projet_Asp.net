<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validercompt.aspx.cs" Inherits="EFF.validercompt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Table-With-Search-1.css">
    <link rel="stylesheet" href="assets/css/Table-With-Search.css">
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-light navbar-expand bg-light navigation-clean">
            <div class="container">
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"></button>
                <img src="assets/img/emploi_3.jpg" style="width: 184px; margin: -3px; height: 67.1719px; padding: -11px;">
                <div class="collapse navbar-collapse" id="navcol-1"><a class="btn btn-primary ml-auto" role="button" href="#">Déconnecter</a></div>
            </div>
        </nav>
        <header class="text-center text-white masthead" style="background: url('assets/img/bg-masthead.jpg')no-repeat center center; background-size: cover; padding: 173px 0px;">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <h1 class="text-dark mb-5">Validation des comptes annonceur</h1>
                    </div>
                    <div class="col-md-12 search-table-col">
                        <span class="counter pull-right"></span>
                        <div class="table-responsive table-bordered table table-hover table-bordered results">
                            <asp:GridView class="table table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="Ref" HeaderText="Reference"></asp:BoundField>
                                    <asp:BoundField DataField="Nom" HeaderText="RaisonSocial"></asp:BoundField>
                                    <asp:BoundField DataField="Date_Creation" HeaderText="Date_Creation"></asp:BoundField>
                                    <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
                                    <asp:BoundField DataField="Telephone" HeaderText="Telephone"></asp:BoundField>
                                    <asp:HyperLinkField  DataNavigateUrlFields="Ref" DataNavigateUrlFormatString="valid.aspx?ref={0}" Text="Activer" />
                                </Columns>
                            </asp:GridView>
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <footer class="text-center text-white call-to-action" style="padding: 8px 0px; background: var(--white);">
            <ul class="list-inline mb-0" style="transform: translateY(21px); font-size: 29px;">
                <li class="list-inline-item"><a href="#"><i class="fa fa-facebook fa-2x fa-fw"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter fa-2x fa-fw"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram fa-2x fa-fw"></i></a></li>
            </ul>
            <p class="text-capitalize text-black-50 copyright" style="font-size: 22px; transform: translateY(21px); color: rgba(0, 0, 0, 0.5);">Company Name © 2021</p>
        </footer>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/Table-With-Search.js"></script>

    </form>
</body>
</html>
