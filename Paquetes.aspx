<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Paquetes.aspx.cs" Inherits="Paquetes" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Paquetes</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="EstilosCSS/Paquetes.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/paquetes/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
      <form id="form1" runat="server">
    <div id="base" class="">

      <!-- Logo (Image) -->
      <div id="u522" class="ax_default image" data-label="Logo">
        <img id="u522_img" class="img " src="Imagenes/logo_Uniplex.png"/>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u523" class="ax_default box_1">
        <div id="u523_div" class=""></div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u524" class="ax_default label">
        <div id="u524_div" class=""></div>
        <div id="u524_text" class="text ">
          <p><span>Soporte</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u525" class="ax_default label">
        <div id="u525_div" class=""></div>
        <div id="u525_text" class="text ">
          <p><span>Usuario: Jonatan Heredia</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u526" class="ax_default label">
        <div id="u526_div" class=""></div>
        <div id="u526_text" class="text ">
          <p><span>21:10 18/12/2018</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u527" class="ax_default label">
        <div id="u527_div" class=""></div>
        <div id="u527_text" class="text ">
          <p><span>Departamento: Networking</span></p>
        </div>
      </div>

      <!-- botonatras (Shape) -->
      <div id="u528" class="ax_default icon" data-label="botonatras">
          <asp:ImageButton ID="btnBack" runat="server" class="img " src="Imagenes/u111.png" OnClick="btnBack_Click" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u529" class="ax_default label">
        <div id="u529_div" class=""></div>
        <div id="u529_text" class="text ">
          <p><span>Regresar</span></p>
        </div>
      </div>

      <!-- btnClientes (Shape) -->
      <div id="u530" class="ax_default icon" data-label="btnClientes">
          <asp:ImageButton ID="btnList" runat="server" class="img " src="Imagenes/logo_contratos_u229.png" OnClick="btnList_Click" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u531" class="ax_default label">
        <div id="u531_div" class=""></div>
        <div id="u531_text" class="text ">
          <p><span>Lista de Paquetes</span></p>
        </div>
      </div>

      <!-- txtPacketID (Text Field) -->
      <div id="u532" class="ax_default text_field" data-label="txtPacketID">
        <asp:TextBox runat="server" id="txtPacketID" type="number" value="" />
      </div>

      <!-- lblPacketID (Rectangle) -->
      <div id="u533" class="ax_default label" data-label="lblPacketID">
        <div id="u533_div" class=""></div>
        <div id="u533_text" class="text ">
          <p><span>ID Paquete:</span></p>
        </div>
      </div>

      <!-- lblContractID (Rectangle) -->
      <div id="u534" class="ax_default label" data-label="lblContractID">
        <div id="u534_div" class=""></div>
        <div id="u534_text" class="text ">
          <p><span>ID Contrato:</span></p>
        </div>
      </div>

      <!-- lblProductID (Rectangle) -->
      <div id="u535" class="ax_default label" data-label="lblProductID">
        <div id="u535_div" class=""></div>
        <div id="u535_text" class="text ">
          <p><span>ID Producto:</span></p>
        </div>
      </div>

      <!-- lblName (Rectangle) -->
      <div id="u536" class="ax_default label" data-label="lblName">
        <div id="u536_div" class=""></div>
        <div id="u536_text" class="text ">
          <p><span>Nombre:</span></p>
        </div>
      </div>

      <!-- lblStartDate (Rectangle) -->
      <div id="u537" class="ax_default label" data-label="lblStartDate">
        <div id="u537_div" class=""></div>
        <div id="u537_text" class="text ">
          <p><span>Fecha Apertura:</span></p>
        </div>
      </div>

      <!-- lblEndDate (Rectangle) -->
      <div id="u538" class="ax_default label" data-label="lblEndDate">
        <div id="u538_div" class=""></div>
        <div id="u538_text" class="text ">
          <p><span>Fecha Cierre:</span></p>
        </div>
      </div>

      <!-- lblType (Rectangle) -->
      <div id="u539" class="ax_default label" data-label="lblType">
        <div id="u539_div" class=""></div>
        <div id="u539_text" class="text ">
          <p><span>Tipo:</span></p>
        </div>
      </div>

      <!-- txtName (Text Field) -->
      <div id="u540" class="ax_default text_field" data-label="txtName">
        <asp:TextBox runat="server" id="txtName" type="text" value=""/>
      </div>

      <!-- txtStartDate (Text Field) -->
      <div id="u541" class="ax_default text_field" data-label="txtStartDate">
        <asp:TextBox runat="server" id="txtStartDate" type="date" value=""/>
      </div>

      <!-- txtEndDate (Text Field) -->
      <div id="u542" class="ax_default text_field" data-label="txtEndDate">
        <asp:TextBox runat="server" id="txtEndDate" type="date" value=""/>
      </div>

      <!-- txtType (Text Field) -->
      <div id="u543" class="ax_default text_field" data-label="txtType">
        <asp:TextBox runat="server" id="txtType" type="text" value=""/>
      </div>

      <!-- lblObserv (Rectangle) -->
      <div id="u544" class="ax_default label" data-label="lblObserv">
        <div id="u544_div" class=""></div>
        <div id="u544_text" class="text ">
          <p><span>Observaciones:</span></p>
        </div>
      </div>

      <!-- txtObserv (Text Field) -->
      <div id="u545" class="ax_default text_field" data-label="txtObserv">
        <asp:TextBox runat="server" id="txtObserv" type="text" value="" Height="97px" TextMode="MultiLine" Width="290px"/>
      </div>

      <!-- tituloRegistroClinte (Rectangle) -->
      <div id="u546" class="ax_default heading_1" data-label="tituloRegistroClinte">
        <div id="u546_div" class=""></div>
        <div id="u546_text" class="text ">
          <p><span>Paquetes</span></p>
        </div>
      </div>

      <!-- btnSave (Shape) -->
      <div id="u547" class="ax_default icon" data-label="btnSave">
         <asp:ImageButton ID="btnSave" runat="server" class="img " src="Imagenes/btnsave_u547.png" OnClick="btnSave_Click" />
      </div>

      <!-- btnClean (Shape) -->
      <div id="u548" class="ax_default icon" data-label="btnClean">
         <asp:ImageButton ID="btnClean" runat="server" class="img " src="Imagenes/btnclean_u548.png" />
      </div>

      <!-- ddlContractID (Droplist) -->
      <div id="u549" class="ax_default droplist" data-label="ddlContractID">
        <asp:DropDownList runat="server" id="ddlContractID">
        </asp:DropDownList>
      </div>

      <!-- ddlProductID (Droplist) -->
      <div id="u550" class="ax_default droplist" data-label="ddlProductID">
        <asp:DropDownList runat="server" id="ddlProductID">
        </asp:DropDownList>
      </div>
    </div>
          
      </form>
  </body>
</html>
