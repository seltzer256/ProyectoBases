using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IngresarClientes : System.Web.UI.Page
{
    List<ListItem> cantonesAzuay = new List<ListItem>()
    {
        new ListItem("Cuenca"),
        new ListItem("Camilo Ponce Enríquez"),
        new ListItem("Chordeleg"),
        new ListItem("El Pan"),
        new ListItem("Girón"),
        new ListItem("Guachapala"),
        new ListItem("Gualaceo"),
        new ListItem("Nabón"),
        new ListItem("Oña"),
        new ListItem("Paute"),
        new ListItem("Pucará"),
        new ListItem("San Fernando"),
        new ListItem("Santa Isabel"),
        new ListItem("Sevilla de Oro"),
        new ListItem("Sígsig"),
    };

    List<ListItem> cantonesBolivar = new List<ListItem>()
    {
        new ListItem("Guaranda"),
        new ListItem("Caluma"),
        new ListItem("Chillanes"),
        new ListItem("Chimbo"),
        new ListItem("Echeandía"),
        new ListItem("Las Naves"),
        new ListItem("San Miguel"),
    };

    List<ListItem> cantonesCañar = new List<ListItem>()
    {
        new ListItem("Azogues"),
        new ListItem("Biblián"),
        new ListItem("Cañar"),
        new ListItem("Déleg"),
        new ListItem("Tambo"),
        new ListItem("La Troncal"),
        new ListItem("Suscal"),
    };

    List<ListItem> cantonesCarchi = new List<ListItem>()
    {
        new ListItem("Tulcán"),
        new ListItem("Bolívar"),
        new ListItem("Espejo"),
        new ListItem("Mira"),
        new ListItem("Montúfar"),
        new ListItem("San Pedro de Huaca"),
    };

    List<ListItem> cantonesChimborazo = new List<ListItem>()
    {
        new ListItem("Riobamba"),
        new ListItem("Alausí"),
        new ListItem("Chambo"),
        new ListItem("Chunchi"),
        new ListItem("Colta"),
        new ListItem("Cumandá"),
        new ListItem("Guamote"),
        new ListItem("Guano"),
        new ListItem("Pallatanga"),
        new ListItem("Penipe"),
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && lstProvincia.SelectedValue == "Azuay")
        {
            lstCantones.DataSource = cantonesAzuay;
            lstCantones.DataBind();
        }
        
    }

    protected void ImageButtonAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Comercial.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ListaClientes.aspx");
    }

    protected void lstProvincia_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (lstProvincia.SelectedValue)
        {
            case "Azuay":
                lstCantones.DataSource = cantonesAzuay;
                lstCantones.DataBind();
                break;
            case "Bolivar":
                lstCantones.DataSource = cantonesBolivar;
                lstCantones.DataBind();
                break;
            case "Cañar":
                lstCantones.DataSource = cantonesCañar;
                lstCantones.DataBind();
                break;
            case "Carchi":
                lstCantones.DataSource = cantonesCarchi;
                lstCantones.DataBind();
                break;
            case "Chimborazo":
                lstCantones.DataSource = cantonesChimborazo;
                lstCantones.DataBind();
                break;
        }
    }

    protected void ImageButtonGuardar_Click(object sender, ImageClickEventArgs e)
    {
        int clienteId = Int32.Parse(txtCliendID.Text);
        String nombre = TextNombre.Text;
        int telefono1 = Int32.Parse(TextTelefono1.Text);
        int telefono2 = Int32.Parse(TextTelefono2.Text);
        String sector = TextSector.Text;
        String responsable1 = TextResponsable1.Text;
        String responsable2 = TextResponsable2.Text;
        int matriz;
        String provincia = lstProvincia.SelectedValue;
        String canton = lstCantones.SelectedValue;

        try
        {
            matriz = int.Parse(TextMatriz.Text);
        }
        catch(FormatException)
        {
            matriz = -1;
        }

        using (SqlConnection conn = Conexion.getConexion())
        {
            string sql;
            if (matriz == -1)
            {
                sql = @"Insert into CLIENTE (CLI_ID, CLI_NOMBRE, CLI_TELEFONO1, CLI_TELEFONO2, 
                            CLI_SECTOR, CLI_RESPONSABLE1, CLI_RESPONSABLE2) 
                            values(@id, @nombre, @telefono1, @telefono2, @sector, @responsable1, @responsable2)";
            }
            else
            {
                sql = @"Insert into CLIENTE (CLI_ID, ID_MATRIZ, CLI_NOMBRE, CLI_TELEFONO1, CLI_TELEFONO2, 
                            CLI_SECTOR, CLI_RESPONSABLE1, CLI_RESPONSABLE2) 
                            values(@id, @matriz, @nombre, @telefono1, @telefono2, @sector, @responsable1, @responsable2)";
            }

            SqlCommand cmd = new SqlCommand(sql, conn);
            
            if(matriz == -1)
            {
                cmd.Parameters.AddWithValue("@id", clienteId);
                cmd.Parameters.AddWithValue("@nombre", nombre);
                cmd.Parameters.AddWithValue("@telefono1", telefono1);
                cmd.Parameters.AddWithValue("@telefono2", telefono2);
                cmd.Parameters.AddWithValue("@sector", sector);
                cmd.Parameters.AddWithValue("@responsable1", responsable1);
                cmd.Parameters.AddWithValue("@responsable2", responsable2);
            }
            else
            {
                cmd.Parameters.AddWithValue("@id", clienteId);
                cmd.Parameters.AddWithValue("@matriz", matriz);
                cmd.Parameters.AddWithValue("@nombre", nombre);
                cmd.Parameters.AddWithValue("@telefono1", telefono1);
                cmd.Parameters.AddWithValue("@telefono2", telefono2);
                cmd.Parameters.AddWithValue("@sector", sector);
                cmd.Parameters.AddWithValue("@responsable1", responsable1);
                cmd.Parameters.AddWithValue("@responsable2", responsable2);
            }
            

            cmd.ExecuteNonQuery();

            string sql1 = @"Insert into PROVINCIA(PROV_ID, CLI_ID, PROV_NOMBRE) values(@provId, @idcliente, @provinciaNombre)";

            cmd = new SqlCommand(sql1, conn);

            cmd.Parameters.AddWithValue("@provId", lstProvincia.SelectedIndex.ToString());     
            cmd.Parameters.AddWithValue("@idcliente", clienteId);
            cmd.Parameters.AddWithValue("@provinciaNombre", provincia);

            cmd.ExecuteNonQuery();


            string sql2 = @"Insert into CIUDAD(ID_CIU, PROV_ID, NOMBRE_CIU) 
                                values(@idciu, @proid, @nombrec)";
            cmd = new SqlCommand(sql2, conn);
            cmd.Parameters.AddWithValue("@idciu", lstCantones.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@proid", lstProvincia.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@nombrec", lstCantones.SelectedValue.ToString());
            cmd.ExecuteNonQuery();

        }

    }

    protected void ImageButtonLimpiar_Click(object sender, ImageClickEventArgs e)
    {
        txtCliendID.Text ="";
        TextNombre.Text = "";
        TextTelefono1.Text = "";
        TextTelefono2.Text = "";
        TextSector.Text = "";
        TextResponsable1.Text = "";
        TextResponsable2.Text = "";
        TextMatriz.Text = "";
        lstProvincia.ClearSelection();
        lstCantones.ClearSelection();
    }

    protected void ImageButtonLimpiar_Click1(object sender, ImageClickEventArgs e)
    {
        txtCliendID.Text = "";
        TextNombre.Text = "";
        TextTelefono1.Text = "";
        TextTelefono2.Text = "";
        TextSector.Text = "";
        TextResponsable1.Text = "";
        TextResponsable2.Text = "";
        TextMatriz.Text = "";
        lstProvincia.ClearSelection();
        lstCantones.ClearSelection();
    }
}