using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConsultarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static void Autentica()
    {
        
    }


    protected void buscarUsuario_Click(object sender, EventArgs e)
    {
       
        String id;
        id = txtId.Text;
        
        try
        {
            SqlConnection con = Conexion.getConexion();
            DataTable dataTable = new DataTable();
            Table tabla = new Table();
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class

            SqlDataAdapter sqlDA;
            
            com.CommandType = CommandType.Text; // We will use stored procedure.
            com.Connection = con; //Pass the connection object to Command
            com.CommandText = "select * from USUARIOS where ID_CI=@id";
            com.Parameters.AddWithValue("@id", id);
      
            sqlDA = new SqlDataAdapter(com);
           
            
            sqlDA.Fill(dataTable);
            DataRow row = dataTable.Rows[0];
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {

                lblId.Text = Convert.ToString(dataTable.Rows[i]["ID_CI"]) ;
                lblNombre.Text = Convert.ToString(dataTable.Rows[i]["NOMBRE_US"]) ;
                lblApellido.Text = Convert.ToString(dataTable.Rows[i]["APELLIDO_US"]) ;
                lblCargo.Text =  Convert.ToString(dataTable.Rows[i]["CARGO_US"]) + "'";
                lblDepartamento.Text = Convert.ToString(dataTable.Rows[i]["DEPARTAMENTO_US"]);
                lblFecNac.Text = Convert.ToString(dataTable.Rows[i]["FECH_NAC_US"]) ;
                lblUsuario.Text =  Convert.ToString(dataTable.Rows[i]["USERNAME_US"]) ;
                //Tratamiento de esos datos...
            }




        }
        catch (Exception ex)
        {
            
            string script = @"<script type='text/javascript'>
                alert('USUARIO CREADO NOOASODA');
                </script>";
        }

    }

    protected void CrearUsuario1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearUsuario.aspx");
    }

    protected void ConsultarUsuario1_Click(object sender, EventArgs e)
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