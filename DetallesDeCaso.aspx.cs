using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DetallesDeCaso : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = Conexion.getConexion();
        llenarDDL();
        ddlCaseID.Width = 160;
        ddlTecName.Width = 160;
        txtEndDate.Width = 155;
        txtStartDate.Width = 155;

    }

    protected void btnBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Soporte.aspx");
    }

    protected void btnCasesList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ListaDinamica.aspx?Lista=DETALLES");
    }

    protected void btnSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlCommand comand = new SqlCommand("INSERT INTO DETALLES_DE_CASO(DET_CAS_ID,CAS_ID,DET_NOMBRE,DET_FECHA_INICIO," +
                "DET_FECHA_CIERRE,DET_HORAS_EFECTIVAS,DET_DESCRIPCION,DET_DETALLE,NOMBRE_TEC,APELLIDO_TEC) " +
                "VALUES(" + txtCaseDetailID.Text + "," + ddlCaseID.Text + ",'" + txtName.Text + "','" + txtStartDate.Text + "','"
                + txtEndDate.Text + "'," + txtHours.Text + ",'" + txtDescription.Text +
                "','" + txtDetail.Text + "','" + ddlTecName.Text + "','" + ddlTecName.Text + "')", conn);
            comand.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Insertado Correctamente')", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
        }
    }

    protected void btnClean_Click(object sender, ImageClickEventArgs e)
    {
        txtCaseDetailID.Text = "";
        txtDescription.Text = "";
        txtDetail.Text = "";
        txtEndDate.Text = "";
        txtHours.Text = "";
        txtName.Text = "";
        txtStartDate.Text = "";
    }
    private void llenarDDL()
    {
        SqlCommand cmd = new SqlCommand("select CAS_ID from CASOS", conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        ddlCaseID.DataSource = ds;
        ddlCaseID.DataTextField = "CAS_ID";
        ddlCaseID.DataValueField = "CAS_ID";
        ddlCaseID.DataBind();

        cmd = new SqlCommand("select NOMBRE_US from USUARIOS", conn);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds);
        ddlTecName.DataSource = ds;
        ddlTecName.DataTextField = "NOMBRE_US";
        ddlTecName.DataValueField = "NOMBRE_US";
        ddlTecName.DataBind();
    }
}