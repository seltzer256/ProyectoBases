<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contratos.aspx.cs" Inherits="InicioComercial" %>

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
        .auto-style3 {
            width: 261px;
            height: 29px;
            color:#FFFFFF;
        }
        .auto-style4 {
            width: 124px;
            height: 29px;
            color:#FFFFFF;
        }
        .auto-style5 {
            width: 261px;
            height: 27px;
            color:#FFFFFF;
        }
        .auto-style6 {
            width: 124px;
            height: 27px;
            color:#FFFFFF;
        }
          .buton1{
            margin-right: 210px
        }
    </style>

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

    <link href="EstilosCSS/Contratos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <img id="LogoUniplex" alt="logo uniplex" class="LogoUniplex" src="Imagenes/logo_Uniplex.png" />

        <div id="u222" class="ax_default box_1" data-label="cuadroIconos">
            <div id="u222_div" class=""></div>
        </div>

        <asp:Label ID="LabelContratos" runat="server" class="lblContratos" Text="Contratos"></asp:Label>

        <div id="tabla" class="tablaDatos">
            <table>
                <tr>
                    <td class="auto-style3">ID Contrato:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextIdContrato" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">ID Cliente:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextIdCliente" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3">Nombre Contrato:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxNombreContrato" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Fecha inicio:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextFechaincio" runat="server" type="date" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Fecha final:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextFechaFinal" runat="server" type="date" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Tipo:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextTipo" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Observaciones:</td>
                    <td class="auto-style4" aria-multiline="True">
                        <asp:TextBox ID="TextBoxObservaciones" runat="server" Width="447px" Height="78px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Paquete:</td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBoxPaquetes" runat="server" Height="83px" Width="451px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                <td ></td>
                    
                <td >
                    <asp:Button ID="ButtonAgregarPaquete" runat="server" class="buton1" Text="Agregar Paquete" OnClick="ButtonAgregarPaquete_Click" />
                    <asp:Button ID="ButtonEliminarPaquete" runat="server" Text="Eliminar Paquete" />
                </td>
            </tr>
            </table>
        </div>        
        
        <asp:ImageButton ID="ImageButtonAtras" runat="server" class="btnAtras" ImageUrl="~/Imagenes/u111.png" OnClick="ImageButtonAtras_Click"  />
        <asp:ImageButton ID="ImageButton1" runat="server" class="btnClientes" ImageUrl="~/Imagenes/logo_contratos_u229.png" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButtonGuardar" runat="server" class="btnGuardar" ImageUrl="~/Imagenes/btnsave_u540.png" AlternateText="boton guardar" OnClick="ImageButtonGuardar_Click" />
        <asp:ImageButton ID="ImageButtonLimpiar" runat="server" class="btnLimpiar" ImageUrl="~/Imagenes/btnclean_u541.png" OnClick="ImageButtonLimpiar_Click"/>
   




    </form>
</body>
</html>
