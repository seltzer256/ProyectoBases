<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 36%;
            margin-right: 0px;
        }

        .auto-style4 {
            width: 402px;
        }

        .auto-style5 {
            width: 724px;
        }

        .auto-style6 {
            width: 724px;
            height: 29px;
        }

        .auto-style7 {
            width: 402px;
            height: 29px;
        }
    </style>
    <script src="ValidacionesJS/validaLogin.js"></script>
    <link href="EstilosCSS/animate.min.css" rel="stylesheet" />
    <link href="EstilosCSS/LoginEstilos.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
        <section0>
        <img src="Imagenes/logo_Uniplex.png" alt="" />
    </section0>
        <section>
            <img src="Imagenes/Panel.PNG" class="animated fadeInUpBig" alt="" />
        </section>

        <div>
            <center>
        <br>

    </center>
        </div>
        <center>
        <div class="container">   
            <div class="inner animated fadeInLeft">
                <asp:Label ID="Label1" runat="server" Text="Iniciar Sesión"></asp:Label>
                 <br><br /><br><br />
                <section01>
                <table class="auto-style2">
            <tr>
                <td class="auto-style5">Seleccione</td>
                <td class="auto-style4">
                    &nbsp;Privilegio</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="lstCargo" runat="server" Height="32px" Width="166px">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Comercial</asp:ListItem>
                        <asp:ListItem>Soporte</asp:ListItem>
                        <asp:ListItem>SysAdmin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Username</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtUsername" runat="server" Height="26px" Width="162px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" type="password"  runat="server" Height="26px" Width="162px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
        <asp:Button ID="btnIniciar" runat="server" Text="INICIAR" Width="162px" OnClick="btnIniciar_Click" BackColor="#0033CC" BorderColor="#0000CC" ForeColor="White" Height="35px" />
                </td>
            </tr>
        </table>
                    </section01>
                </div>
            </div>
        </center>
        <br>
        <center>
        </center>

    </form>
</body>
</html>
