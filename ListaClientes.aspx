<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListaClientes.aspx.cs" Inherits="InicioComercial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .fadeInUpBig {
            height: 722px;
            width: 1522px;
            margin-right: 0px;
        }      
       
        .auto-style2 {
            text-align: center;
        }
    </style>
    <link href="EstilosCSS/ListaClientes.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="auto-style2">

        <img id="LogoUniplex" alt="logo uniplex" class="LogoUniplex" src="Imagenes/logo_Uniplex.png" />

        <asp:ImageButton ID="ImageButtonAtras" runat="server" class="btnAtras" ImageUrl="~/Imagenes/u111.png" OnClick="ImageButtonAtras_Click"/>
        <asp:Label ID="LabelAtras" runat="server" class="lblAtras" Text="Atrás"></asp:Label>
        <%--<asp:Label ID="LabelListaClientes" runat="server" class="lblListaClientes" Text="Lista Clientes"></asp:Label>--%>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PROYECTO2ConnectionString %>" DeleteCommand="DELETE FROM [CLIENTE] WHERE [CLI_ID] = @original_CLI_ID AND (([CLI_CLI_ID] = @original_CLI_CLI_ID) OR ([CLI_CLI_ID] IS NULL AND @original_CLI_CLI_ID IS NULL)) AND (([CLI_NOMBRE] = @original_CLI_NOMBRE) OR ([CLI_NOMBRE] IS NULL AND @original_CLI_NOMBRE IS NULL)) AND (([CLI_TELEFONO1] = @original_CLI_TELEFONO1) OR ([CLI_TELEFONO1] IS NULL AND @original_CLI_TELEFONO1 IS NULL)) AND (([CLI_TELEFONO2] = @original_CLI_TELEFONO2) OR ([CLI_TELEFONO2] IS NULL AND @original_CLI_TELEFONO2 IS NULL)) AND (([CLI_SECTOR] = @original_CLI_SECTOR) OR ([CLI_SECTOR] IS NULL AND @original_CLI_SECTOR IS NULL)) AND (([CLI_RESPONSABLE1] = @original_CLI_RESPONSABLE1) OR ([CLI_RESPONSABLE1] IS NULL AND @original_CLI_RESPONSABLE1 IS NULL)) AND (([CLI_RESPONSABLE2] = @original_CLI_RESPONSABLE2) OR ([CLI_RESPONSABLE2] IS NULL AND @original_CLI_RESPONSABLE2 IS NULL)) AND (([ID_MATRIZ] = @original_ID_MATRIZ) OR ([ID_MATRIZ] IS NULL AND @original_ID_MATRIZ IS NULL))" InsertCommand="INSERT INTO [CLIENTE] ([CLI_ID], [CLI_CLI_ID], [CLI_NOMBRE], [CLI_TELEFONO1], [CLI_TELEFONO2], [CLI_SECTOR], [CLI_RESPONSABLE1], [CLI_RESPONSABLE2], [ID_MATRIZ]) VALUES (@CLI_ID, @CLI_CLI_ID, @CLI_NOMBRE, @CLI_TELEFONO1, @CLI_TELEFONO2, @CLI_SECTOR, @CLI_RESPONSABLE1, @CLI_RESPONSABLE2, @ID_MATRIZ)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CLIENTE]" UpdateCommand="UPDATE [CLIENTE] SET [CLI_CLI_ID] = @CLI_CLI_ID, [CLI_NOMBRE] = @CLI_NOMBRE, [CLI_TELEFONO1] = @CLI_TELEFONO1, [CLI_TELEFONO2] = @CLI_TELEFONO2, [CLI_SECTOR] = @CLI_SECTOR, [CLI_RESPONSABLE1] = @CLI_RESPONSABLE1, [CLI_RESPONSABLE2] = @CLI_RESPONSABLE2, [ID_MATRIZ] = @ID_MATRIZ WHERE [CLI_ID] = @original_CLI_ID AND (([CLI_CLI_ID] = @original_CLI_CLI_ID) OR ([CLI_CLI_ID] IS NULL AND @original_CLI_CLI_ID IS NULL)) AND (([CLI_NOMBRE] = @original_CLI_NOMBRE) OR ([CLI_NOMBRE] IS NULL AND @original_CLI_NOMBRE IS NULL)) AND (([CLI_TELEFONO1] = @original_CLI_TELEFONO1) OR ([CLI_TELEFONO1] IS NULL AND @original_CLI_TELEFONO1 IS NULL)) AND (([CLI_TELEFONO2] = @original_CLI_TELEFONO2) OR ([CLI_TELEFONO2] IS NULL AND @original_CLI_TELEFONO2 IS NULL)) AND (([CLI_SECTOR] = @original_CLI_SECTOR) OR ([CLI_SECTOR] IS NULL AND @original_CLI_SECTOR IS NULL)) AND (([CLI_RESPONSABLE1] = @original_CLI_RESPONSABLE1) OR ([CLI_RESPONSABLE1] IS NULL AND @original_CLI_RESPONSABLE1 IS NULL)) AND (([CLI_RESPONSABLE2] = @original_CLI_RESPONSABLE2) OR ([CLI_RESPONSABLE2] IS NULL AND @original_CLI_RESPONSABLE2 IS NULL)) AND (([ID_MATRIZ] = @original_ID_MATRIZ) OR ([ID_MATRIZ] IS NULL AND @original_ID_MATRIZ IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CLI_ID" Type="Int32" />
                <asp:Parameter Name="original_CLI_CLI_ID" Type="Int32" />
                <asp:Parameter Name="original_CLI_NOMBRE" Type="String" />
                <asp:Parameter Name="original_CLI_TELEFONO1" Type="Int32" />
                <asp:Parameter Name="original_CLI_TELEFONO2" Type="Int32" />
                <asp:Parameter Name="original_CLI_SECTOR" Type="String" />
                <asp:Parameter Name="original_CLI_RESPONSABLE1" Type="String" />
                <asp:Parameter Name="original_CLI_RESPONSABLE2" Type="String" />
                <asp:Parameter Name="original_ID_MATRIZ" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CLI_ID" Type="Int32" />
                <asp:Parameter Name="CLI_CLI_ID" Type="Int32" />
                <asp:Parameter Name="CLI_NOMBRE" Type="String" />
                <asp:Parameter Name="CLI_TELEFONO1" Type="Int32" />
                <asp:Parameter Name="CLI_TELEFONO2" Type="Int32" />
                <asp:Parameter Name="CLI_SECTOR" Type="String" />
                <asp:Parameter Name="CLI_RESPONSABLE1" Type="String" />
                <asp:Parameter Name="CLI_RESPONSABLE2" Type="String" />
                <asp:Parameter Name="ID_MATRIZ" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CLI_CLI_ID" Type="Int32" />
                <asp:Parameter Name="CLI_NOMBRE" Type="String" />
                <asp:Parameter Name="CLI_TELEFONO1" Type="Int32" />
                <asp:Parameter Name="CLI_TELEFONO2" Type="Int32" />
                <asp:Parameter Name="CLI_SECTOR" Type="String" />
                <asp:Parameter Name="CLI_RESPONSABLE1" Type="String" />
                <asp:Parameter Name="CLI_RESPONSABLE2" Type="String" />
                <asp:Parameter Name="ID_MATRIZ" Type="Int32" />
                <asp:Parameter Name="original_CLI_ID" Type="Int32" />
                <asp:Parameter Name="original_CLI_CLI_ID" Type="Int32" />
                <asp:Parameter Name="original_CLI_NOMBRE" Type="String" />
                <asp:Parameter Name="original_CLI_TELEFONO1" Type="Int32" />
                <asp:Parameter Name="original_CLI_TELEFONO2" Type="Int32" />
                <asp:Parameter Name="original_CLI_SECTOR" Type="String" />
                <asp:Parameter Name="original_CLI_RESPONSABLE1" Type="String" />
                <asp:Parameter Name="original_CLI_RESPONSABLE2" Type="String" />
                <asp:Parameter Name="original_ID_MATRIZ" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:GridView ID="GridView1" class="tabla" runat="server" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" AutoGenerateColumns="False" CellPadding="4" CellSpacing="1" DataKeyNames="CLI_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1412px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CLI_ID" HeaderText="CLI_ID" SortExpression="CLI_ID" ReadOnly="True" />
                <asp:BoundField DataField="CLI_CLI_ID" HeaderText="CLI_CLI_ID" SortExpression="CLI_CLI_ID" />
                <asp:BoundField DataField="CLI_NOMBRE" HeaderText="CLI_NOMBRE" SortExpression="CLI_NOMBRE" />
                <asp:BoundField DataField="CLI_TELEFONO1" HeaderText="CLI_TELEFONO1" SortExpression="CLI_TELEFONO1" />
                <asp:BoundField DataField="CLI_TELEFONO2" HeaderText="CLI_TELEFONO2" SortExpression="CLI_TELEFONO2" />
                <asp:BoundField DataField="CLI_SECTOR" HeaderText="CLI_SECTOR" SortExpression="CLI_SECTOR" />
                <asp:BoundField DataField="CLI_RESPONSABLE1" HeaderText="CLI_RESPONSABLE1" SortExpression="CLI_RESPONSABLE1" />
                <asp:BoundField DataField="CLI_RESPONSABLE2" HeaderText="CLI_RESPONSABLE2" SortExpression="CLI_RESPONSABLE2" />
                <asp:BoundField DataField="ID_MATRIZ" HeaderText="ID_MATRIZ" SortExpression="ID_MATRIZ" />
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

        </div>

    </form>
</body>
</html>
