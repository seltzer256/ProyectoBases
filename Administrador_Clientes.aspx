<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Administrador_Clientes.aspx.cs" Inherits="Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="EstilosCSS/AdministradorEstilos.css" rel="stylesheet" />
     
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color:skyblue" >
     <section>
     <img src="Imagenes/logo_Uniplex.PNG" class="animated fadeInUpBig" alt="" />
    </section>
        <div class="menu"> 
        <center>
            <span class="auto-style1">mjpacha2</span><br />
            <span class="auto-style1">Administrador</span><div id="mostrarHora"><script type="text/javascript">
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
         <br>
        <center>
            Seleccione Cliente:
            <br><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CLI_ID" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="CLI_ID" HeaderText="ID" ReadOnly="True" SortExpression="CLI_ID" />
                <asp:BoundField DataField="CLI_NOMBRE" HeaderText="NOMBRE" SortExpression="CLI_NOMBRE" />
                <asp:BoundField DataField="CLI_TELEFONO1" HeaderText="TELEFONO1" SortExpression="CLI_TELEFONO1" />
                <asp:BoundField DataField="CLI_TELEFONO2" HeaderText="TELEFONO2" SortExpression="CLI_TELEFONO2" />
                <asp:BoundField DataField="CLI_SECTOR" HeaderText="SECTOR" SortExpression="CLI_SECTOR" />
                <asp:BoundField DataField="CLI_RESPONSABLE1" HeaderText="RESPONSABLE1" SortExpression="CLI_RESPONSABLE1" />
                <asp:BoundField DataField="CLI_RESPONSABLE2" HeaderText="RESPONSABLE2" SortExpression="CLI_RESPONSABLE2" />
              
            </Columns>
           
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
           
        </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:helpdeskConnectionString %>" SelectCommand="SELECT * FROM [CLIENTE]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:helpdeskConnectionString %>" SelectCommand="SELECT * FROM [CASOS]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:helpdeskConnectionString %>" SelectCommand="SELECT [ID_CI], [NOMBRE_US], [APELLIDO_US], [CARGO_US], [DEPARTAMENTO_US], [FECH_NAC_US], [USERNAME_US] FROM [USUARIOS]"></asp:SqlDataSource>
        
        </center>
        
      <hr class="vertical"></hr>
         <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
   
</body>
</html>
