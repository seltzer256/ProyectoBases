<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comercial.aspx.cs" Inherits="InicioComercial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .fadeInUpBig {
            height: 722px;
            width: 1500px;
            margin-right: 0px;
        }
    </style>
    <link href="EstilosCSS/comercial.css" rel="stylesheet" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/comercial/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/comercial/data.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div id="u222" class="ax_default box_1" data-label="cuadroIconos">
            <div id="u222_div" class=""></div>
        </div>

        <img id="LogoUniplex" alt="logo uniplex" class="LogoUniplex" src="Imagenes/logo_Uniplex.png" />

        <asp:ImageButton ID="btnLogoCliente" runat="server" class="logo_cliente_u228" ImageUrl="~/Imagenes/logo_cliente_u228.png" OnClick="btnLogoCliente_Click" />
        <asp:Label ID="LabelClientes" runat="server" class="LabelCliente" Text="Clientes"></asp:Label>

        <asp:ImageButton ID="btnLogoContrato" runat="server" class="logo_contratos_u229" ImageUrl="~/Imagenes/logo_contratos_u229.png" OnClick="btnLogoContrato_Click" />
        <asp:Label ID="LabelContrato" runat="server" class="LabelContrato" Text="Contrato"></asp:Label>

        <asp:ImageButton ID="btnLogoProducto" runat="server" class="logo_producto_u232" ImageUrl="~/Imagenes/logo_producto_u232.png" OnClick="btnLogoProducto_Click" />
        <asp:Label ID="LabelProducto" runat="server" class="LabelProducto" Text="Producto"></asp:Label>

    </form>
</body>
</html>
