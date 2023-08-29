<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mes annonces.aspx.cs" Inherits="EFF.mes_annonces" %>

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
