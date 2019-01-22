<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CrearUsuario.aspx.cs" Inherits="CrearUsuario" %>

<!DOCTYPE html>
<link href="EstilosCSS/EstiloUsuario.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 10px;
        }
        .auto-style4 {
            width: 44%;
        }
        .auto-style5 {
            width: 25%;
        }
    </style>
</head>
<body>
    <img src="Imagenes/Uniplex.png" width="300" height="100"/>
    <form id="form1" runat="server">
        <div>
    <table>
  <tr>
    <th class="arriba">
        <div>
            <asp:Button ID="CrearUsuario1" runat="server" class="button button1" Text="CREAR USUARIO" OnClick="CrearUsuario1_Click" />
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
          
    </th>
      <th  class="arriba">
          <%-------------------------------- --%>
          <table>
              <tr>
    <th class="auto-style3">
       
        <h2 align="center" class="auto-style6">CREAR USUARIO</h2> 
        
          </th>
    </tr>
     <tr>
    <th class="auto-style3">
       
        <h2 class="auto-style5">ID:<asp:TextBox ID="txtId" runat="server"></asp:TextBox></h2>           
          </th>
    </tr>
    <tr>
    <th>
       
        <h2 class="auto-style1">NOMBRE:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></h2>           
            </th>
    </tr>
     <tr>
    <th>
       
        <h2 class="auto-style1">APELLIDO:<asp:TextBox ID="txtApellido" runat="server"></asp:TextBox></h2>           
            </th>
    </tr>
     <tr>
    <th>
       
        <h2 class="auto-style1">CARGO:
            <asp:DropDownList ID="listaCargo" runat="server">
            <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Comercial</asp:ListItem>
                        <asp:ListItem>Soporte</asp:ListItem>
            </asp:DropDownList>
        </h2>           
            </th>
    </tr>
    <tr>
    <th>
       
        <h2 class="auto-style1">DEPARTAMENTO:
            <asp:DropDownList ID="listaDepartamento" runat="server">
            <asp:ListItem>Administrador</asp:ListItem>
                  <asp:ListItem>NETWORKING</asp:ListItem>
                 <asp:ListItem>SYBASE</asp:ListItem>
                 <asp:ListItem>PROYECTOS</asp:ListItem>
                <asp:ListItem>COMERCIAL</asp:ListItem>
                 <asp:ListItem>GERENCIA</asp:ListItem>
                 <asp:ListItem>DIRECTORIO</asp:ListItem>
                 <asp:ListItem>CONTADURIA</asp:ListItem>
                 <asp:ListItem>LEGAL</asp:ListItem>
            </asp:DropDownList>
        </h2>           
            </th>
    </tr>
              <tr>
    <th>
       
        <h2 class="auto-style4">FECHA DE NACIMIENTO:<asp:TextBox ID="txtFecNac" runat="server" TextMode="Date"></asp:TextBox></h2>           
            </th>
    </tr>
  <tr>
    <th>
       
        <h2 class="auto-style1">USUARIO:<asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></h2>           
            </th>
    </tr>
        <tr>
    <th>
       
        <h2 class="auto-style1">CONTRASEÑA:<asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password"></asp:TextBox></h2>           
            </th>
    </tr>
    <tr>
    <th>
        <div align="center">
             <asp:Button ID="crearUsuario2" runat="server" class="button button1" Text="CREAR USUARIO" OnClick="crearUsuario2_Click" />

        </div>
       
                   
            </th>
    </tr>
         </table>
          <%-- -------------------------------- --%>
      </th>
       </tr>
      </table>
  
 
        </div>
    </form>
</body>
</html>
