using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrearUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void crearUsuario2_Click(object sender, EventArgs e)
    {
        String id, nombre, apellido, cargo, departamento, usuario, contrasenia, fecha;
        id = this.txtId.Text;
        cargo = listaCargo.SelectedItem.Text;
        nombre = txtNombre.Text;
        apellido = txtApellido.Text;
        departamento = listaDepartamento.SelectedItem.Text;
        usuario = txtUsuario.Text;
        contrasenia = txtContrasenia.Text;
        fecha = txtFecNac.Text;
        
        try
        {
            SqlConnection con = Conexion.getConexion();
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command
            com.CommandType = System.Data.CommandType.StoredProcedure; // We will use stored procedure.
            com.CommandText = "spInsertUser"; //Stored Procedure Name
            com.Parameters.Add("@ID_CI", SqlDbType.NVarChar).Value = id;
            com.Parameters.Add("@NOMBRE_US", SqlDbType.NVarChar).Value = nombre;
            com.Parameters.Add("@APELLIDO_US", SqlDbType.NVarChar).Value = apellido;
            com.Parameters.Add("@CARGO_US", SqlDbType.NVarChar).Value = cargo;
            com.Parameters.Add("@DEPARTAMENTO_US", SqlDbType.NVarChar).Value = departamento;
            com.Parameters.Add("@FECH_NAC_US", SqlDbType.DateTime).Value = fecha;
            com.Parameters.Add("@USERNAME_US", SqlDbType.NVarChar).Value = usuario;
            com.Parameters.Add("@PASSWORD_US", SqlDbType.NVarChar).Value = contrasenia;
            string script = @"<script type='text/javascript'>
                alert('USUARIO CREADO');
                </script>";
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);

            com.ExecuteNonQuery();
        }
        catch (Exception ex)
        {

        }
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