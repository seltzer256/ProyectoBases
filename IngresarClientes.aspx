<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IngresarClientes.aspx.cs" Inherits="IngresarClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 29px;
            color:white;
        }
        .auto-style3 {
            height: 29px;
            color: white;
            width: 186px;
        }
       
        .auto-style4 {
            border-width: 0px;
            position: absolute;
            left: 0px;
            top: 0px;
            width: 313px;
            height: 129px;
        }
       
    </style>
    
    <link href="EstilosCSS/ingresarClientes.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <img id="LogoUniplex" alt="logo uniplex" class="auto-style4" src="Imagenes/logo_Uniplex.png" />

        <div id="u222" class="ax_default box_1" data-label="cuadroIconos">
            <div id="u222_div" class="">
            </div>
        </div>

        <asp:Label ID="LabelRegistroCliente" runat="server" class="lblResgitrarCliente" Text="Registro Cliente"></asp:Label>

        <div>
            <table class="tablaDatos">
                <tr>
                    <td class="auto-style3">Cliente ID:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCliendID" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextNombre" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Telefono 1:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextTelefono1" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Telefono 2:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextTelefono2" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Sector:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextSector" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Responsable 1:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextResponsable1" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Responsable 1:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextResponsable2" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Matriz:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextMatriz" runat="server" Width="447px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Provincia:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="lstProvincia" runat="server" OnSelectedIndexChanged="lstProvincia_SelectedIndexChanged" AutoPostBack="true" Height="24px" Width="451px">
                            <asp:ListItem>Selecione una opción</asp:ListItem>
                            <asp:ListItem>Azuay</asp:ListItem>
                            <asp:ListItem>Bolivar</asp:ListItem>
                            <asp:ListItem>Cañar</asp:ListItem>
                            <asp:ListItem>Carchi</asp:ListItem>
                            <asp:ListItem>Chimborazo</asp:ListItem>
                            <asp:ListItem>Cotopaxi</asp:ListItem>
                            <asp:ListItem>El Oro</asp:ListItem>
                            <asp:ListItem>Esmeraldas</asp:ListItem>
                            <asp:ListItem>Galápagos</asp:ListItem>
                            <asp:ListItem>Guayas</asp:ListItem>
                            <asp:ListItem>Imbabura</asp:ListItem>
                            <asp:ListItem>Loja</asp:ListItem>
                            <asp:ListItem>Los Ríos</asp:ListItem>
                            <asp:ListItem>Manabí</asp:ListItem>
                            <asp:ListItem>Morona Santiago</asp:ListItem>
                            <asp:ListItem>Napo</asp:ListItem>
                            <asp:ListItem>Orellana</asp:ListItem>
                            <asp:ListItem>Pastaza</asp:ListItem>
                            <asp:ListItem>Pichincha</asp:ListItem>
                            <asp:ListItem>Santa Elena</asp:ListItem>
                            <asp:ListItem>Santo Domingo de los Tsáchilas</asp:ListItem>
                            <asp:ListItem>Sucumbios</asp:ListItem>
                            <asp:ListItem>Tungurahua</asp:ListItem>
                            <asp:ListItem>Zamora Chimchipe</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ciudad:</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="lstCantones" runat="server" Height="24px" Width="451px">
                       
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>

        <asp:ImageButton ID="ImageButtonAtras" runat="server" class="btnAtras" ImageUrl="~/Imagenes/u111.png" OnClick="ImageButtonAtras_Click" />
        <asp:ImageButton ID="ImageButtonClientes" runat="server" class="btnClientes" ImageUrl="~/Imagenes/logo_contratos_u229.png" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButtonGuardar" runat="server" class="btnGuardar" ImageUrl="~/Imagenes/btnsave_u540.png" AlternateText="boton guardar" OnClick="ImageButtonGuardar_Click" />

        <asp:ImageButton ID="ImageButtonLimpiar" runat="server" class="btnLimpiar" ImageUrl="~/Imagenes/btnclean_u541.png" OnClick="ImageButtonLimpiar_Click1" />
    </form>
</body>
</html>
