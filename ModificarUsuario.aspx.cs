﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CrearUsuario1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearUsuario.aspx");
    }

    protected void ConsultarUsuario_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConsultarUsuario.aspx");
    }

    protected void ModificarUsuario_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModificarUsuario.aspx");
    }

    protected void EliminarUsuario_Click(object sender, EventArgs e)
    {
        Response.Redirect("EliminarUsuario.aspx");
    }
}