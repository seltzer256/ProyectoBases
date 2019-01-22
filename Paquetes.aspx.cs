using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Paquetes : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = Conexion.getConexion();
        llenarDDL();
        txtEndDate.Width = 155;
        txtStartDate.Width = 155;
        ddlContractID.Width = 160;
        ddlProductID.Width = 160;
    }

    protected void btnBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Soporte.aspx");
    }

    protected void btnList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ListaDinamica.aspx?Lista=PAQUETES");
    }

    protected void btnSave_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlCommand comand = new SqlCommand("INSERT INTO PAQUETES(PAQ_ID,CON_ID,PRO_ID,PAQ_NOMBRE,PAQ_FECHA_APERTURA," +
                "PAQ_FECHA_CIERRE,PAQ_TIPO,PAQ_OBSERVACIONES) VALUES(" + txtPacketID.Text + "," + ddlContractID.Text + "," 
                + ddlProductID.Text + ",'" + txtName.Text + "','" + txtStartDate.Text + "','" + txtEndDate.Text + "','" 
                + txtType.Text + "','" + txtObserv.Text + "')", conn);
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
        txtName.Text = "";
        txtObserv.Text = "";
        txtPacketID.Text = "";
        txtType.Text = "";
        txtEndDate.Text = DateTime.Now.ToString();
        txtStartDate.Text = DateTime.Now.ToString();
    }
    private void llenarDDL()
    {
        SqlCommand cmd = new SqlCommand("select CON_ID from CONTRATOS", Conexion.getConexion());
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        ddlContractID.DataSource = ds;
        ddlContractID.DataTextField = "CON_ID";
        ddlContractID.DataValueField = "CON_ID";
        ddlContractID.DataBind();

        cmd = new SqlCommand("select PRO_ID from PRODUCTO", Conexion.getConexion());
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds);
        ddlProductID.DataSource = ds;
        ddlProductID.DataTextField = "PRO_ID";
        ddlProductID.DataValueField = "PRO_ID";
        ddlProductID.DataBind();
    }
}