using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

    protected void ImageButtonGuardar_Click(object sender, ImageClickEventArgs e)
    {
        int proid = Int32.Parse(TextIdProducto.Text);
        String proLinea = TextLineaNegocio.Text;
        String proSubLinea = TextSublineaNegocio.Text;
        String pro = TextProducto.Text;
        String subpro = TextSubproducto.Text;
        using (SqlConnection conn = Conexion.getConexion()) 
        {
            string sql = @"Insert into PRODUCTO (PRO_ID, PRO_LINEA_NEGOCIO, PRO_SUBLINEA_NEGOCIO,
                            PRO_PRODUCTO, PRO_SUBPRODUCTO) 
                            values(@id, @linea, @sublinea, @producto, @subproducto)";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@id", proid);
            cmd.Parameters.AddWithValue("@linea", proLinea);
            cmd.Parameters.AddWithValue("@sublinea", proSubLinea);
            cmd.Parameters.AddWithValue("@producto", pro);
            cmd.Parameters.AddWithValue("@subproducto", subpro);

            cmd.ExecuteNonQuery();
        }
    }
    protected void ImageButtonLimpiar_Click(object sender, ImageClickEventArgs e)
    {
        TextIdProducto.Text = "";
        TextLineaNegocio.Text = "";
        TextSublineaNegocio.Text = "";
        TextProducto.Text = "";
        TextSubproducto.Text = "";
    }
}
