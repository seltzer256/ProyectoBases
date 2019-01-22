<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="EstilosCSS/AdministradorEstilos.css" rel="stylesheet" />
     
    <title></title>
</head>
<body style="background-color:skyblue">
    
    
    <form id="form1" runat="server" >
     <section>
     <img src="Imagenes/logo_Uniplex.PNG" class="animated fadeInUpBig" alt="" />
    </section>
        <div class="menu"> 
        <center>
       <asp:Label ID="Label1" font-Size="X-Large" runat="server" Text="Label"></asp:Label>
        <br />
       <asp:Label ID="Label2" font-Size="X-Large" runat="server" Text="Label"></asp:Label>
       <div id="mostrarHora"><script type="text/javascript">
        var d = new Date();
        document.write(d.getDate(),'/'+d.getMonth(),'/'+d.getFullYear(),'<br>'+d.getHours(),':'+d.getMinutes());
        </script></div>
        </center>
        <br />
        <br>
         <hr>

    </hr>
          
    <ul>
        <li><a href="Administrador_Clientes.aspx">Clientes</a></li>
        <li><a href="Login.aspx">Salir</a></li>
    </ul>

    </div>
      <hr class="vertical"></hr>
            </form>

</body>
</html>
