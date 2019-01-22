using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIniciar_Click(object sender, EventArgs e)
    {
        bool verifica=false;
        String cargo, nombreU, contraseña;
        cargo = lstCargo.SelectedItem.Text;
        nombreU = this.txtUsername.Text;
        contraseña = this.txtPassword.Text;    
        Consultas con = new Consultas();
        if (cargo != "" && contraseña != "")
        {
            verifica = con.Autentica(cargo, nombreU, contraseña);
        }
        if (verifica && cargo == "Administrador")
        {
            
            Session["usuario"] = verifica;
            Response.Redirect("Administrador.aspx?parametro="+ txtUsername.Text+"&parametro1="+lstCargo.SelectedItem.Text);
 
        }
        else if (verifica && cargo == "Comercial")
        {
            Response.Redirect("Comercial.aspx");
        }
        else if (verifica && cargo == "Soporte")
        {
            Response.Redirect("Soporte.aspx");
        }
        else if (verifica && cargo == "SysAdmin")
        {
            Response.Redirect("Usuarios.aspx");
        }
        else if (nombreU != "" && contraseña != "")
        {
            string script = @"<script type='text/javascript'>
                alert('Credenciales Incorrectas: ');
                </script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
        }
        }

    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        if (this.txtPassword.Text== "*")
        {
            txtPassword.Text = " ";
        }
        else
        {
            txtPassword.Text = "*";
        }
        txtPassword.Focus();
    }
}
