using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Casos : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = Conexion.getConexion();
        llenarDDL();
        ddlPacketID.Width = 160;
        txtStartDate.Width = 155;
        txtEndDate.Width = 155;
    }

    protected void btnBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Soporte.aspx");
    }

    protected void btnCasesList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ListaDinamica.aspx?Lista=CASOS");
    }

    protected void btnSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlCommand comand = new SqlCommand("INSERT INTO CASOS(CAS_ID,PAQ_ID,CAS_NOMBRE,CAS_FECHA_INICIO,CAS_FECHA_CIERRE," +
                "CAS_HORAS_EFECTIVAS,CAS_ESTADO) VALUES(" + txtCaseID.Text + "," + ddlPacketID.Text + ",'" + txtName.Text 
                + "','" + txtStartDate.Text + "','" + txtEndDate.Text + "',"+ txtHours.Text + ",'" + txtState.Text + "')", conn);
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
        txtCaseID.Text = "";
        txtEndDate.Text = "";
        txtHours.Text = "";
        txtName.Text = "";
        txtStartDate.Text = "";
        txtState.Text = "";
    }
    private void llenarDDL()
    {
        SqlCommand cmd = new SqlCommand("select PAQ_ID from PAQUETES", conn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        ddlPacketID.DataSource = ds;
        ddlPacketID.DataTextField = "PAQ_ID";
        ddlPacketID.DataValueField = "PAQ_ID";
        ddlPacketID.DataBind();
    }
}