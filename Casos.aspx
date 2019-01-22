<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Casos.aspx.cs" Inherits="Casos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Casos</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="EstilosCSS/Casos.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/casos/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</head>
<body style="width: 1280px">

    <div id="u594" class="ax_default image" data-label="Logo">
        <img id="u594_img" class="img " src="Imagenes/logo_Uniplex.png"/>
      </div>
    <form runat="server">

      <!-- Logo (Image) -->
      

      <!-- Unnamed (Rectangle) -->
      <div id="u595" class="ax_default box_1">
        <div id="u595_div" class="">
            
          </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u596" class="ax_default label">
        <div id="u596_div" class=""></div>
        <div id="u596_text" class="text ">
          <p><span>Soporte</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u597" class="ax_default label">
        <div id="u597_div" class=""></div>
        <div id="u597_text" class="text ">
          <p><span>Usuario: Jonatan Heredia</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u598" class="ax_default label">
        <div id="u598_div" class=""></div>
        <div id="u598_text" class="text ">
          <p><span>21:10 18/12/2018</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u599" class="ax_default label">
        <div id="u599_div" class=""></div>
        <div id="u599_text" class="text ">
          <p><span>Departamento: Networking</span></p>
        </div>
      </div>

      <!-- botonatras (Shape) -->
      <div id="u600" class="ax_default icon" data-label="botonatras">
          <asp:ImageButton ID="btnBack" runat="server" class="img " src="Imagenes/u111.png" OnClick="btnBack_Click" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u601" class="ax_default label">
        <div id="u601_div" class=""></div>
        <div id="u601_text" class="text ">
          <p><span>Regresar</span></p>
        </div>
      </div>

      <!-- btnClientes (Shape) -->
      <div id="u602" class="ax_default icon" data-label="btnClientes">
          <asp:ImageButton ID="btnCasesList" runat="server" class="img " src="Imagenes/logo_contratos_u229.png" OnClick="btnCasesList_Click" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u603" class="ax_default label">
        <div id="u603_div" class=""></div>
        <div id="u603_text" class="text ">
          <p><span>Lista de Casos</span></p>
        </div>
      </div>
      <!-- lblCaseID (Rectangle) -->
      <div id="u605" class="ax_default label" data-label="lblCaseID">
        <div id="u605_div" class="auto-style1"></div>
        <div id="u605_text" class="text ">
          <p><span>ID Caso:</span></p>
        </div>
      </div>

      <!-- lblPacketID (Rectangle) -->
      <div id="u606" class="ax_default label" data-label="lblPacketID">
        <div id="u606_div" class=""></div>
        <div id="u606_text" class="text ">
          <p><span>ID Paquete</span></p>
        </div>
      </div>

      <!-- lblName (Rectangle) -->
      <div id="u607" class="ax_default label" data-label="lblName">
        <div id="u607_div" class=""></div>
        <div id="u607_text" class="text ">
          <p><span>Nombre:</span></p>
        </div>
      </div>

      <!-- lblStartDate (Rectangle) -->
      <div id="u608" class="ax_default label" data-label="lblStartDate">
        <div id="u608_div" class=""></div>
        <div id="u608_text" class="text ">
          <p><span>Fecha Inicio:</span></p>
        </div>
      </div>

      <!-- lblEndDate (Rectangle) -->
      <div id="u609" class="ax_default label" data-label="lblEndDate">
        <div id="u609_div" class=""></div>
        <div id="u609_text" class="text ">
          <p><span>Fecha Cierre:</span></p>
        </div>
      </div>

      <!-- lblHours (Rectangle) -->
      <div id="u610" class="ax_default label" data-label="lblHours">
        <div id="u610_div" class=""></div>
        <div id="u610_text" class="text ">
          <p><span>Horas efectivas:</span></p>
        </div>
      </div>

      <!-- lblState (Rectangle) -->
      <div id="u611" class="ax_default label" data-label="lblState">
        <div id="u611_div" class=""></div>
        <div id="u611_text" class="text ">
          <p><span>Estado:</span></p>
        </div>
      </div>

        <!-- txtCaseID (Text Field) -->
      <div id="u604" class="ax_default text_field" data-label="txtCaseID">
        <asp:TextBox id="txtCaseID" type="number" value=""  runat="server"/>
      </div>

        <!-- ddlPacketID (Droplist) -->
      <div id="u620" class="ax_default droplist" data-label="ddlPacketID">
        <asp:DropDownList id="ddlPacketID" runat="server">
        </asp:DropDownList>
      </div>

      <!-- txtName (Text Field) -->
      <div id="u612" class="ax_default text_field" data-label="txtName">
        <asp:TextBox id="txtName" type="text" value="" runat="server"/>
      </div>

      <!-- txtStartDate (Text Field) -->
      <div id="u613" class="ax_default text_field" data-label="txtStartDate">
        <asp:TextBox id="txtStartDate" type="date" value="" runat="server"/>
      </div>

      <!-- txtEndDate (Text Field) -->
      <div id="u614" class="ax_default text_field" data-label="txtEndDate">
        <asp:TextBox id="txtEndDate" type="date" value="" runat="server"/>
      </div>

      <!-- txtHours (Text Field) -->
      <div id="u615" class="ax_default text_field" data-label="txtHours">
        <asp:TextBox id="txtHours" type="number" value="" runat="server"/>
      </div>

      <!-- txtState (Text Field) -->
      <div id="u616" class="ax_default text_field" data-label="txtState">
        <asp:TextBox id="txtState" type="text" value="" runat="server"/>
      </div>

      <!-- tituloRegistroClinte (Rectangle) -->
      <div id="u617" class="ax_default heading_1" data-label="tituloRegistroClinte">
        <div id="u617_div" class=""></div>
        <div id="u617_text" class="text ">
          <p><span>Casos</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u618" class="ax_default icon">
          <asp:ImageButton ID="btnSave" runat="server" class="img " src="Imagenes/btnsave_u547.png" OnClick="btnSave_Click" />
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u619" class="ax_default icon">
          <asp:ImageButton ID="btnClean" runat="server" class="img " src="Imagenes/btnclean_u548.png" OnClick="btnClean_Click" />
      </div>

    </form>
</body>
</html>
