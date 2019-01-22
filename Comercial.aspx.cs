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

    protected void btnLogoCliente_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("IngresarClientes.aspx");
    }

    protected void btnLogoContrato_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Contratos.aspx");
    }

    protected void btnLogoProducto_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GestiónProductos.aspx");
    }
}