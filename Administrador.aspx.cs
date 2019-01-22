using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["parametro"]!=null) {
            Label1.Text = Request["parametro"];
           
        }
        if (Request.QueryString["parametro1"] != null)
        {
            Label2.Text = Request.QueryString["parametro1"].ToString();

        }
    }
}