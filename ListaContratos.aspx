﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListaContratos.aspx.cs" Inherits="ListaContratos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="EstilosCSS/ListaContratos.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="auto-style1">
        
        <img id="LogoUniplex" alt="logo uniplex" class="LogoUniplex" src="http://localhost:61475/Imagenes/logo_Uniplex.png" />
        
        <asp:ImageButton ID="ImageButtonAtras" runat="server" class="btnAtras" ImageUrl="~/Imagenes/u111.png" OnClick="ImageButtonAtras_Click"/>
        <asp:Label ID="LabelAtras" runat="server" class="lblAtras" Text="Atrás"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" class="tablaDatos" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CellSpacing="1" DataKeyNames="CON_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CON_ID" HeaderText="CON_ID" ReadOnly="True" SortExpression="CON_ID" />
                <asp:BoundField DataField="CLI_ID" HeaderText="CLI_ID" SortExpression="CLI_ID" />
                <asp:BoundField DataField="CON_NOMBREID" HeaderText="CON_NOMBREID" SortExpression="CON_NOMBREID" />
                <asp:BoundField DataField="FECHA_INICIO" HeaderText="FECHA_INICIO" SortExpression="FECHA_INICIO" />
                <asp:BoundField DataField="FECHA_FIN" HeaderText="FECHA_FIN" SortExpression="FECHA_FIN" />
                <asp:BoundField DataField="CON_TIPO" HeaderText="CON_TIPO" SortExpression="CON_TIPO" />
                <asp:BoundField DataField="CON_OBSERVACIONES" HeaderText="CON_OBSERVACIONES" SortExpression="CON_OBSERVACIONES" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>" DeleteCommand="DELETE FROM [CONTRATOS] WHERE [CON_ID] = @original_CON_ID AND (([CLI_ID] = @original_CLI_ID) OR ([CLI_ID] IS NULL AND @original_CLI_ID IS NULL)) AND (([CON_NOMBREID] = @original_CON_NOMBREID) OR ([CON_NOMBREID] IS NULL AND @original_CON_NOMBREID IS NULL)) AND (([FECHA_INICIO] = @original_FECHA_INICIO) OR ([FECHA_INICIO] IS NULL AND @original_FECHA_INICIO IS NULL)) AND (([FECHA_FIN] = @original_FECHA_FIN) OR ([FECHA_FIN] IS NULL AND @original_FECHA_FIN IS NULL)) AND (([CON_TIPO] = @original_CON_TIPO) OR ([CON_TIPO] IS NULL AND @original_CON_TIPO IS NULL)) AND (([CON_OBSERVACIONES] = @original_CON_OBSERVACIONES) OR ([CON_OBSERVACIONES] IS NULL AND @original_CON_OBSERVACIONES IS NULL))" InsertCommand="INSERT INTO [CONTRATOS] ([CON_ID], [CLI_ID], [CON_NOMBREID], [FECHA_INICIO], [FECHA_FIN], [CON_TIPO], [CON_OBSERVACIONES]) VALUES (@CON_ID, @CLI_ID, @CON_NOMBREID, @FECHA_INICIO, @FECHA_FIN, @CON_TIPO, @CON_OBSERVACIONES)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CONTRATOS]" UpdateCommand="UPDATE [CONTRATOS] SET [CLI_ID] = @CLI_ID, [CON_NOMBREID] = @CON_NOMBREID, [FECHA_INICIO] = @FECHA_INICIO, [FECHA_FIN] = @FECHA_FIN, [CON_TIPO] = @CON_TIPO, [CON_OBSERVACIONES] = @CON_OBSERVACIONES WHERE [CON_ID] = @original_CON_ID AND (([CLI_ID] = @original_CLI_ID) OR ([CLI_ID] IS NULL AND @original_CLI_ID IS NULL)) AND (([CON_NOMBREID] = @original_CON_NOMBREID) OR ([CON_NOMBREID] IS NULL AND @original_CON_NOMBREID IS NULL)) AND (([FECHA_INICIO] = @original_FECHA_INICIO) OR ([FECHA_INICIO] IS NULL AND @original_FECHA_INICIO IS NULL)) AND (([FECHA_FIN] = @original_FECHA_FIN) OR ([FECHA_FIN] IS NULL AND @original_FECHA_FIN IS NULL)) AND (([CON_TIPO] = @original_CON_TIPO) OR ([CON_TIPO] IS NULL AND @original_CON_TIPO IS NULL)) AND (([CON_OBSERVACIONES] = @original_CON_OBSERVACIONES) OR ([CON_OBSERVACIONES] IS NULL AND @original_CON_OBSERVACIONES IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CON_ID" Type="Int32" />
                <asp:Parameter Name="original_CLI_ID" Type="Int32" />
                <asp:Parameter Name="original_CON_NOMBREID" Type="String" />
                <asp:Parameter Name="original_FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="original_FECHA_FIN" Type="DateTime" />
                <asp:Parameter Name="original_CON_TIPO" Type="String" />
                <asp:Parameter Name="original_CON_OBSERVACIONES" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CON_ID" Type="Int32" />
                <asp:Parameter Name="CLI_ID" Type="Int32" />
                <asp:Parameter Name="CON_NOMBREID" Type="String" />
                <asp:Parameter Name="FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="FECHA_FIN" Type="DateTime" />
                <asp:Parameter Name="CON_TIPO" Type="String" />
                <asp:Parameter Name="CON_OBSERVACIONES" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CLI_ID" Type="Int32" />
                <asp:Parameter Name="CON_NOMBREID" Type="String" />
                <asp:Parameter Name="FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="FECHA_FIN" Type="DateTime" />
                <asp:Parameter Name="CON_TIPO" Type="String" />
                <asp:Parameter Name="CON_OBSERVACIONES" Type="String" />
                <asp:Parameter Name="original_CON_ID" Type="Int32" />
                <asp:Parameter Name="original_CLI_ID" Type="Int32" />
                <asp:Parameter Name="original_CON_NOMBREID" Type="String" />
                <asp:Parameter Name="original_FECHA_INICIO" Type="DateTime" />
                <asp:Parameter Name="original_FECHA_FIN" Type="DateTime" />
                <asp:Parameter Name="original_CON_TIPO" Type="String" />
                <asp:Parameter Name="original_CON_OBSERVACIONES" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        

        </div>
        
        

    </form>
</body>
</html>