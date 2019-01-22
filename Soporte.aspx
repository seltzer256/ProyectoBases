<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Soporte.aspx.cs" Inherits="Casos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <title>Soporte</title>
    <link href="EstilosCSS/soporte.css" type="text/css" rel="stylesheet"/>
</head>
<body style="width: 1280px">

    <asp:Image ID="Image1" runat="server" Height="114px" ImageUrl="~/Imagenes/logo_Uniplex.png" Width="332px" />
    

      <!-- Unnamed (Rectangle) -->
    <form runat="server">
      <div id="u510" class="ax_default box_1">
        <div id="u510_div" class="">
          </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u511" class="ax_default label">
        <div id="u511_div" class=""></div>
        <div id="u511_text" class="text ">
          <p><span>Soporte</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u512" class="ax_default label">
        <div id="u512_div" class=""></div>
        <div id="u512_text" class="text ">
          <p><span>Usuario: Jonatan Heredia</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u513" class="ax_default label">
        <div id="u513_div" class=""></div>
        <div id="u513_text" class="text ">
          <p><span>21:10 18/12/2018</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u514" class="ax_default label">
        <div id="u514_div" class=""></div>
        <div id="u514_text" class="text ">
          <p><span>Departamento: Networking</span></p>
        </div>
      </div>
    

    <div id="u515" class="ax_default icon" data-label="btnPackets">
        <asp:ImageButton ID="btnPackets" class="img " runat="server" src="Imagenes/btnpackets_u515.png" OnClick="btnPackets_Click" />
      </div>

    <!-- btnCases (Shape) -->
      <div id="u516" class="ax_default icon" data-label="btnCases">
          <asp:ImageButton ID="btnCases" runat="server" class="img " src="Imagenes/btncases_u516.png" OnClick="btnCases_Click"/>
      </div>

      <!-- btnCaseDetail (Shape) -->
      <div id="u517" class="ax_default icon" data-label="btnCaseDetail">
          <asp:ImageButton ID="btnCaseDetail" runat="server" class="img " src="Imagenes/btncasedetail_u517.png" OnClick="btnCaseDetail_Click"/>
      </div>

      <!-- lblPackets (Rectangle) -->
      <div id="u518" class="ax_default heading_2" data-label="lblPackets">
        <div id="u518_div" class=""></div>
        <div id="u518_text" class="text ">
          <p><span>Paquetes</span></p>
        </div>
      </div>

      <!-- lblCaseDetail (Rectangle) -->
      <div id="u519" class="ax_default heading_2" data-label="lblCaseDetail">
        <div id="u519_div" class=""></div>
        <div id="u519_text" class="text ">
          <p><span>Detalles de Caso</span></p>
        </div>
      </div>

      <!-- lblCases (Rectangle) -->
      <div id="u520" class="ax_default heading_2" data-label="lblCases">
        <div id="u520_div" class=""></div>
        <div id="u520_text" class="text ">
          <p><span>Casos</span></p>
        </div>
      </div>

      <!-- btnSignOut (Shape) -->
      <div id="u521" class="ax_default icon" data-label="btnSignOut">
          <asp:ImageButton ID="btnLogOut" runat="server" class="img " src="Imagenes/btnsignout_u521.png" OnClick="btnLogOut_Click"/>
      </div>

    </form>
</body>

</html>


