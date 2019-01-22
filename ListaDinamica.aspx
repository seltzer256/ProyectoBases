<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListaDinamica.aspx.cs" Inherits="Lista_Dinamica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lista </title>
    <link href="EstilosCSS/ListaDinamica.css" type="text/css" rel="stylesheet"/>
    </head>
<body>
    <form id="form1" runat="server">
        <div id="base" class=""> 
            <!-- btnSearch (Shape) -->
      <div id="u551" class="ax_default icon" data-label="btnSearch">
          <asp:ImageButton ID="btnSearch" runat="server" class="img " src="Imagenes/btnsearch_u551.png" OnClick="btnSearch_Click"  />
      </div>

      <!-- lblSearch (Text Field) -->
      <div id="u552" class="ax_default text_field" data-label="lblSearch">
        <input id="txtSearch" type="text" value=""/>
      </div>

     </div>
        
        <asp:SqlDataSource ID="sqlCases" runat="server" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>"
            SelectCommand="SELECT * FROM [CASOS]"   
            OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CASOS] WHERE [CAS_ID] = @original_CAS_ID"
            UpdateCommand="UPDATE [CASOS] SET [CAS_NOMBRE] = @CAS_NOMBRE, [CAS_FECHA_INICIO] = @CAS_FECHA_INICIO, [CAS_FECHA_CIERRE] 
            = @CAS_FECHA_CIERRE, [CAS_HORAS_EFECTIVAS] = @CAS_HORAS_EFECTIVAS, [CAS_ESTADO] = @CAS_ESTADO 
            WHERE [CAS_ID] = @original_CAS_ID ">
            <DeleteParameters>
                <asp:Parameter Name="original_CAS_ID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="PAQ_ID" Type="Int32" />
                <asp:Parameter Name="CAS_NOMBRE" Type="String" />
                <asp:Parameter Name="CAS_FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="CAS_FECHA_CIERRE" Type="DateTime" />
                <asp:Parameter Name="CAS_HORAS_EFECTIVAS" Type="Int32" />
                <asp:Parameter Name="CAS_ESTADO" Type="String" />
                <asp:Parameter Name="original_CAS_ID" Type="Int32" />
                <asp:Parameter Name="original_PAQ_ID" Type="Int32" />
                <asp:Parameter Name="original_CAS_NOMBRE" Type="String" />
                <asp:Parameter Name="original_CAS_FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="original_CAS_FECHA_CIERRE" Type="DateTime" />
                <asp:Parameter Name="original_CAS_HORAS_EFECTIVAS" Type="Int32" />
                <asp:Parameter Name="original_CAS_ESTADO" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlPackets" runat="server" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>" 
            SelectCommand="SELECT * FROM [PAQUETES]" ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [PAQUETES] WHERE [PAQ_ID] = @original_PAQ_ID "  OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [PAQUETES] SET [PRO_ID] = @PRO_ID, [PAQ_NOMBRE] = @PAQ_NOMBRE, [PAQ_FECHA_APERTURA] = @PAQ_FECHA_APERTURA,
            [PAQ_FECHA_CIERRE] = @PAQ_FECHA_CIERRE, [PAQ_TIPO] = @PAQ_TIPO, [PAQ_OBSERVACIONES] = @PAQ_OBSERVACIONES
            WHERE [PAQ_ID] = @original_PAQ_ID " >
            <DeleteParameters>
                <asp:Parameter Name="original_PAQ_ID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CON_ID" Type="Int32" />
                <asp:Parameter Name="PRO_ID" Type="Int32" />
                <asp:Parameter Name="PAQ_NOMBRE" Type="String" />
                <asp:Parameter Name="PAQ_FECHA_APERTURA" Type="DateTime" />
                <asp:Parameter Name="PAQ_FECHA_CIERRE" Type="DateTime" />
                <asp:Parameter Name="PAQ_TIPO" Type="String" />
                <asp:Parameter Name="PAQ_OBSERVACIONES" Type="String" />
                <asp:Parameter Name="original_PAQ_ID" Type="Int32" />
                <asp:Parameter Name="original_CON_ID" Type="Int32" />
                <asp:Parameter Name="original_PRO_ID" Type="Int32" />
                <asp:Parameter Name="original_PAQ_NOMBRE" Type="String" />
                <asp:Parameter Name="original_PAQ_FECHA_APERTURA" Type="DateTime" />
                <asp:Parameter Name="original_PAQ_FECHA_CIERRE" Type="DateTime" />
                <asp:Parameter Name="original_PAQ_TIPO" Type="String" />
                <asp:Parameter Name="original_PAQ_OBSERVACIONES" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="sqlCaseDetail" runat="server" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>" 
            SelectCommand="SELECT * FROM [DETALLES_DE_CASO]" ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [DETALLES_DE_CASO] WHERE [DET_CAS_ID] = @original_DET_CAS_ID AS)"
            OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [DETALLES_DE_CASO] SET [DET_NOMBRE] = @DET_NOMBRE, 
            [DET_FECHA_INICIO] = @DET_FECHA_INICIO, [DET_FECHA_CIERRE] = @DET_FECHA_CIERRE, [DET_HORAS_EFECTIVAS] = @DET_HORAS_EFECTIVAS, 
            [DET_DESCRIPCION] = @DET_DESCRIPCION, [DET_DETALLE] = @DET_DETALLE, [NOMBRE_TEC] = @NOMBRE_TEC, [APELLIDO_TEC] = @APELLIDO_TEC 
            WHERE [DET_CAS_ID] = @original_DET_CAS_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_DET_CAS_ID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CAS_ID" Type="Int32" />
                <asp:Parameter Name="DET_NOMBRE" Type="String" />
                <asp:Parameter Name="DET_FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="DET_FECHA_CIERRE" Type="DateTime" />
                <asp:Parameter Name="DET_HORAS_EFECTIVAS" Type="Int32" />
                <asp:Parameter Name="DET_DESCRIPCION" Type="String" />
                <asp:Parameter Name="DET_DETALLE" Type="String" />
                <asp:Parameter Name="NOMBRE_TEC" Type="String" />
                <asp:Parameter Name="APELLIDO_TEC" Type="String" />
                <asp:Parameter Name="original_DET_CAS_ID" Type="Int32" />
                <asp:Parameter Name="original_CAS_ID" Type="Int32" />
                <asp:Parameter Name="original_DET_NOMBRE" Type="String" />
                <asp:Parameter Name="original_DET_FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="original_DET_FECHA_CIERRE" Type="DateTime" />
                <asp:Parameter Name="original_DET_HORAS_EFECTIVAS" Type="Int32" />
                <asp:Parameter Name="original_DET_DESCRIPCION" Type="String" />
                <asp:Parameter Name="original_DET_DETALLE" Type="String" />
                <asp:Parameter Name="original_NOMBRE_TEC" Type="String" />
                <asp:Parameter Name="original_APELLIDO_TEC" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
        <asp:SqlDataSource ID="sqlAuxiliar" runat="server" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>" SelectCommand="SELECT * FROM [DETALLES_DE_CASO] WHERE ([CAS_ID] = @CAS_ID)" >
            <SelectParameters>
                <asp:Parameter DefaultValue="7891" Name="CAS_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       
        <div id="u571" class="ax_default table" data-table="dataTable" >
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="dataTable" runat="server" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None"  OnSelectedIndexChanged="dataTable_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>
       <div id="u569" class="ax_default icon" data-label="botonatras">
        <asp:ImageButton ID="btnBack" runat="server" class="img " src="Imagenes/u111.png" OnClick="btnBack_Click" Height="51px" Width="61px" />
      </div>
    
    <div id="u570" class="ax_default label">
        <div id="u570_div" class=""></div>
        <div id="u570_text" class="text ">
          <p><span>Regresar</span></p>
        </div>
      </div>
        <div id="u572" class="ax_default table" data-table="dataTable" >
            </div>
        <asp:SqlDataSource ID="sqlAuxiliar2" runat="server" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>" SelectCommand="SELECT * FROM [CASOS] WHERE ([PAQ_ID] = @PAQ_ID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="123" Name="PAQ_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    
    
        
</body>
</html>
