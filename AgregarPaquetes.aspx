<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarPaquetes.aspx.cs" Inherits="InicioComercial" %>

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

        .auto-style1 {
            width: 94px;
            color: white;
        }

        .auto-style4 {
            width: 249px;
            color: white;
        }

        .auto-style5 {
            width: 450px;
            height: 81px;
        }

      
    </style>

    <link href="EstilosCSS/AgregarPaquete.css" rel="stylesheet" />

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

        <img id="LogoUniplex" alt="logo uniplex" class="LogoUniplex" src="Imagenes/logo_Uniplex.png" />

        <asp:Label ID="LabelPaquetes" runat="server" class="lblPaquetes" Text="Paquetes"></asp:Label>

        <div id="u222" class="ax_default box_1" data-label="cuadroIconos">
            <div id="u222_div" class=""></div>
        </div>

        <table class="tablaDatos">
            <tr>
                <td class="auto-style4">ID Paquete:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextIdPaquete" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">ID Contrato:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextIdContrato" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">ID Producto:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBoxIdProducto" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextNombre" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>



            <tr>
                <td class="auto-style4">Fecha de apertura:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextFechaApertura" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Fecha de cierre:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextFechaCierre" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="auto-style4">Cliente ID:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCliendID" runat="server" Width="447px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Tipo:</td>
                <td class="auto-style1">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="250px">
                        <asp:ListItem>Mantenimiento</asp:ListItem>
                        <asp:ListItem>Instalación</asp:ListItem>
                        <asp:ListItem>Soporte técnico</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Observaciones:</td>
                <td class="auto-style1">
                    <textarea id="TextArea" class="auto-style5"></textarea>
                </td>
            </tr>
            

        </table>


         <asp:ImageButton ID="ImageButtonAtras" runat="server" class="btnAtras" ImageUrl="~/Imagenes/u111.png" OnClick="ImageButtonAtras_Click" />
       <asp:ImageButton ID="ImageButtonPaquetes" runat="server" class="btnPaquetes" ImageUrl="~/Imagenes/logo_contratos_u229.png" />
        <asp:ImageButton ID="ImageButtonGuardar" runat="server" class="btnGuardar" ImageUrl="~/Imagenes/btnsave_u540.png" AlternateText="boton guardar" OnClick="ImageButtonGuardar_Click" />

        <asp:ImageButton ID="ImageButtonLimpiar" runat="server" class="btnLimpiar" ImageUrl="~/Imagenes/btnclean_u541.png" OnClick="ImageButtonLimpiar_Click1" />
   
    </form>
</body>
</html>
