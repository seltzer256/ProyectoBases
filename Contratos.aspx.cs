using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InicioComercial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButtonAtras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Comercial.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ListaContratos.aspx");
    }

    protected void ImageButtonLimpiar_Click(object sender, ImageClickEventArgs e)
    {
        TextIdContrato.Text = "";
        TextIdCliente.Text = "";
        TextBoxNombreContrato.Text = "";
        TextFechaFinal.Text = "";
        TextFechaincio.Text = "";
        TextTipo.Text = "";
        TextBoxObservaciones.Text = "";        
        ListBoxPaquetes.ClearSelection();
    }

    protected void ImageButtonGuardar_Click(object sender, ImageClickEventArgs e)
    {
        String idContrato = TextIdContrato.Text;
        String idCliente = TextIdContrato.Text;
        String nombreContrato = TextIdContrato.Text;
        String fechaFinal = TextIdContrato.Text;
        String fechaInicio = TextIdContrato.Text;
        String tipo = TextIdContrato.Text;
        String observaciones = TextBoxObservaciones.Text;
        ListItemCollection d = ListBoxPaquetes.Items;

        
    }

    protected void ButtonAgregarPaquete_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarPaquetes.aspx");
    }
}