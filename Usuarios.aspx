<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="EstilosCSS/EstiloUsuario.css" type="text/css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div >
        <img src="Imagenes/Uniplex.png" width="300" height="100"/>
            </div>
        <div>
            <asp:Button ID="CrearUsuario" runat="server" class="button button1" Text="CREAR USUARIO" OnClick="CrearUsuario_Click" />
        </div>
          <div>
         <asp:Button ID="ConsultarUsuario" runat="server" Text="CONSULTAR USUARIO" class="button button1" OnClick="ConsultarUsuario_Click" />
           </div>
        <div>
         <asp:Button ID="ModificarUsuario" runat="server" Text="MODIFICAR USUARIO" class="button button1" OnClick="ModificarUsuario_Click" />
           </div>
        <div>
         <asp:Button ID="EliminarUsuario" runat="server" Text="ELIMINAR USUARIO" class="button button1" OnClick="EliminarUsuario_Click" />
           </div>
          <div align="right">
         <asp:Button ID="PaginaPrincipal" runat="server" Text="PAGINA PRINCIPAL" class="button button2" OnClick="PaginaPrincipal_Click" />
           </div>
    </form>

</body>
</html>
