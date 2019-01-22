<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConsultarUsuario.aspx.cs" Inherits="ConsultarUsuario" %>

<!DOCTYPE html>
<link href="EstilosCSS/EstiloUsuario.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            vertical-align: top;
            width: 20%;
        }
    </style>
</head>
<body>
    <img src="Imagenes/Uniplex.png" width="300" height="100"/>
    <form id="form1" runat="server">
        <div>
    <table>
  <tr>
    <th class="auto-style2">
        <div>
            <asp:Button ID="CrearUsuario1" runat="server" class="button button1" Text="CREAR USUARIO" OnClick="CrearUsuario1_Click" />
        </div>
          <div>
         <asp:Button ID="ConsultarUsuario1" runat="server" Text="CONSULTAR USUARIO" class="button button1" OnClick="ConsultarUsuario1_Click" />
           </div>
        <div>
         <asp:Button ID="ModificarUsuario" runat="server" Text="MODIFICAR USUARIO" class="button button1" OnClick="ModificarUsuario_Click" />
           </div>
        <div>
         <asp:Button ID="EliminarUsuario" runat="server" Text="ELIMINAR USUARIO" class="button button1" OnClick="EliminarUsuario_Click" />
           </div>
        </div>
        </th>
        <th class="arriba">
        <div>
            
        <h2 align="center" class="auto-style6">CONSULTAR USUARIO</h2> 
        <h2 class="auto-style5">ID:<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </h2> 
        <asp:Button ID="buscarUsuario" runat="server"  Text="BUSCAR USUARIO" OnClick="buscarUsuario_Click" />
          
        </div>
            <div>
            
                <table class="tabla">
  <tr >
    <th>ID</th>
    <th>NOMBRE</th>
    <th>APELLIDO</th>
    <th>CARGO</th>
    <th>DEPARTAMENTO</th>
    <th>FECHA NACIMIENTO</th>
    <th>USUARIO</th>
   
  </tr>
  <tr>
    <th><asp:Label ID="lblId" runat="server" Text=""></asp:Label>
      </th>
    <th><asp:Label ID="lblNombre" runat="server" Text=""></asp:Label></th>
    <th><asp:Label ID="lblApellido" runat="server" Text=""></asp:Label></th>
    <th><asp:Label ID="lblCargo" runat="server" Text=""></asp:Label></th>
    <th><asp:Label ID="lblDepartamento" runat="server" Text=""></asp:Label></th>
    <th><asp:Label ID="lblFecNac" runat="server" Text=""></asp:Label></th>
    <th><asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label></th>
    
  </tr>
  <tr>
    <th>  
       
      </th>
    
  </tr>
</table>
        
          
        </div>
        </th>
    </form>
</body>
</html>
