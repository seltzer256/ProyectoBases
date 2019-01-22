<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestiónProductos.aspx.cs" Inherits="InicioComercial" %>

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
            height: 29px;
            color:white;
        }
        .auto-style2 {
            height: 153px;
        }
        .auto-style3 {
            height: 29px;
            color: white;
            width: 245px;
        }
    </style>
    <link href="EstilosCSS/GestiónProductos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <img id="LogoUniplex" alt="logo uniplex" class="LogoUniplex" src="Imagenes/logo_Uniplex.png" />

        <div id="u222" class="ax_default box_1" data-label="cuadroIconos">
            <div id="u222_div" class=""></div>
        </div>
        
        <asp:Label ID="LabelGestionProductos" runat="server" class="lblGestionProducto" Text="Gestión Productos"></asp:Label>

        <div class="tablaDatos">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">ID Producto:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextIdProducto" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Linea de negocio:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextLineaNegocio" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Sublinea de negocio:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextSublineaNegocio" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Producto:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextProducto" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Subproducto:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextSubproducto" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>

        <asp:ImageButton ID="ImageButtonAtras" runat="server" class="btnAtras" ImageUrl="~/Imagenes/u111.png" OnClick="ImageButtonAtras_Click"  />
        <asp:ImageButton ID="ImageButtonGuardar" runat="server" class="btnGuardar" ImageUrl="~/Imagenes/btnsave_u540.png" AlternateText="boton guardar" OnClick="ImageButtonGuardar_Click" />
        <asp:ImageButton ID="ImageButtonLimpiar" runat="server" class="btnLimpiar" ImageUrl="~/Imagenes/btnclean_u541.png" OnClick="ImageButtonLimpiar_Click"/>

    </form>
</body>
</html>
