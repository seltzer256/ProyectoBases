<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetallesDeCaso.aspx.cs" Inherits="DetallesDeCaso" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Detalles de Caso</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="EstilosCSS/DetallesDeCaso.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/detalles_de_caso/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body >
      <form runat="server">
    <div id="base" class="">

      <!-- Logo (Image) -->
      <div id="u563" class="ax_default image" data-label="Logo">
        <img id="u563_img" class="img " src="Imagenes/logo_Uniplex.png" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u564" class="ax_default box_1">
        <div id="u564_div" class=""></div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u565" class="ax_default label">
        <div id="u565_div" class=""></div>
        <div id="u565_text" class="text ">
          <p><span>Soporte</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u566" class="ax_default label">
        <div id="u566_div" class=""></div>
        <div id="u566_text" class="text ">
          <p><span>Usuario: Jonatan Heredia</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u567" class="ax_default label">
        <div id="u567_div" class=""></div>
        <div id="u567_text" class="text ">
          <p><span>21:10 18/12/2018</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u568" class="ax_default label">
        <div id="u568_div" class=""></div>
        <div id="u568_text" class="text ">
          <p><span>Departamento: Networking</span></p>
        </div>
      </div>

      <!-- botonatras (Shape) -->
      <div id="u569" class="ax_default icon" data-label="botonatras">
        <asp:ImageButton ID="btnBack" runat="server" class="img " src="Imagenes/u111.png" OnClick="btnBack_Click" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u570" class="ax_default label">
        <div id="u570_div" class=""></div>
        <div id="u570_text" class="text ">
          <p><span>Regresar</span></p>
        </div>
      </div>

      <!-- btnClientes (Shape) -->
      <div id="u571" class="ax_default icon" data-label="btnClientes">
        <asp:ImageButton ID="btnCasesList" runat="server" class="img " src="Imagenes/logo_contratos_u229.png" OnClick="btnCasesList_Click" />
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u572" class="ax_default label">
        <div id="u572_div" class=""></div>
        <div id="u572_text" class="text ">
          <p><span>Detalles de Caso</span></p>
        </div>
      </div>

      <!-- txtCaseDetailID (Text Field) -->
      <div id="u573" class="ax_default text_field" data-label="txtCaseDetailID">
        <asp:TextBox runat="server" id="txtCaseDetailID" type="number" value="" />
      </div>

      <!-- lblCaseDetailID (Rectangle) -->
      <div id="u574" class="ax_default label" data-label="lblCaseDetailID">
        <div id="u574_div" class=""></div>
        <div id="u574_text" class="text ">
          <p><span>ID Detalle del Caso:</span></p>
        </div>
      </div>

      <!-- lblCaseID (Rectangle) -->
      <div id="u575" class="ax_default label" data-label="lblCaseID">
        <div id="u575_div" class=""></div>
        <div id="u575_text" class="text ">
          <p><span>ID Caso:</span></p>
        </div>
      </div>

      <!-- lblName (Rectangle) -->
      <div id="u576" class="ax_default label" data-label="lblName">
        <div id="u576_div" class=""></div>
        <div id="u576_text" class="text ">
          <p><span>Nombre:</span></p>
        </div>
      </div>

      <!-- lblStartDate (Rectangle) -->
      <div id="u577" class="ax_default label" data-label="lblStartDate">
        <div id="u577_div" class=""></div>
        <div id="u577_text" class="text ">
          <p><span>Fecha de Inicio:</span></p>
        </div>
      </div>

      <!-- lblEndDate (Rectangle) -->
      <div id="u578" class="ax_default label" data-label="lblEndDate">
        <div id="u578_div" class=""></div>
        <div id="u578_text" class="text ">
          <p><span>Fecha de Cierre:</span></p>
        </div>
      </div>

      <!-- lblHours (Rectangle) -->
      <div id="u579" class="ax_default label" data-label="lblHours">
        <div id="u579_div" class=""></div>
        <div id="u579_text" class="text ">
          <p><span>Horas Efectivas:</span></p>
        </div>
      </div>

      <!-- lblDescription (Rectangle) -->
      <div id="u580" class="ax_default label" data-label="lblDescription">
        <div id="u580_div" class=""></div>
        <div id="u580_text" class="text ">
          <p><span>Descripción:</span></p>
        </div>
      </div>

      <!-- txtStartDate (Text Field) -->
      <div id="u581" class="ax_default text_field" data-label="txtStartDate">
        <asp:TextBox runat="server" id="txtStartDate" type="date" value=""/>
      </div>

      <!-- txtEndDate (Text Field) -->
      <div id="u582" class="ax_default text_field" data-label="txtEndDate">
        <asp:TextBox runat="server" id="txtEndDate" type="date" value=""/>
      </div>

      <!-- txtHours (Text Field) -->
      <div id="u583" class="ax_default text_field" data-label="txtHours">
        <asp:TextBox runat="server" id="txtHours" type="number" value=""/>
      </div>

      <!-- txtDesription (Text Field) -->
      <div id="u584" class="ax_default text_field" data-label="txtDesription">
        <asp:TextBox runat="server" id="txtDescription" type="text" value=""/>
      </div>

      <!-- lblDetail (Rectangle) -->
      <div id="u585" class="ax_default label" data-label="lblDetail">
        <div id="u585_div" class=""></div>
        <div id="u585_text" class="text ">
          <p><span>Detalle:</span></p>
        </div>
      </div>

      <!-- txtDetail (Text Field) -->
      <div id="u586" class="ax_default text_field" data-label="txtDetail">
        <asp:TextBox runat="server" id="txtDetail" type="text" value="" Height="90px" TextMode="MultiLine" Width="290px"/>
      </div>

      <!-- tituloRegistroClinte (Rectangle) -->
      <div id="u587" class="ax_default heading_1" data-label="tituloRegistroClinte">
        <div id="u587_div" class=""></div>
        <div id="u587_text" class="text ">
          <p><span>Detalles de Caso</span></p>
        </div>
      </div>

      <!-- btnSave (Shape) -->
      <div id="u588" class="ax_default icon" data-label="btnSave">
        <asp:ImageButton ID="btnSave" runat="server" class="img " src="Imagenes/btnsave_u547.png" OnClick="btnSave_Click" />
      </div>

      <!-- btnClean (Shape) -->
      <div id="u589" class="ax_default icon" data-label="btnClean">
        <asp:ImageButton ID="btnClean" runat="server" class="img " src="Imagenes/btnclean_u548.png" OnClick="btnClean_Click" />
      </div>

      <!-- ddlCaseID (Droplist) -->
      <div id="u590" class="ax_default droplist" data-label="ddlCaseID">
        <asp:DropDownList runat="server" id="ddlCaseID">
        </asp:DropDownList>
      </div>

      <!-- lblTecName (Rectangle) -->
      <div id="u591" class="ax_default label" data-label="lblTecName">
        <div id="u591_div" class=""></div>
        <div id="u591_text" class="text ">
          <p><span>Nombre del Tecnico:</span></p>
        </div>
      </div>

      <!-- txtName (Text Field) -->
      <div id="u592" class="ax_default text_field" data-label="txtName">
        <asp:TextBox runat="server" id="txtName" type="text" value=""/>
      </div>

      <!-- ddlTecName (Droplist) -->
      <div id="u593" class="ax_default droplist" data-label="ddlTecName">
        <asp:DropDownList runat="server" id="ddlTecName">
        </asp:DropDownList>
      </div>
    </div>
          </form>
  </body>
</html>

