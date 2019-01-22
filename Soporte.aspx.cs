using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

public partial class Casos : System.Web.UI.Page
{
    CRUD crud = new CRUD();
    private string html = "";
    ArrayList btnList = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPackets_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Paquetes.aspx");
    }

    protected void btnCases_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Casos.aspx");
    }

    protected void btnCaseDetail_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DetallesDeCaso.aspx");
    }

    protected void btnLogOut_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
