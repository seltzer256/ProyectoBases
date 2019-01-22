using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Conexion
/// </summary>
public class Conexion
{
    private static SqlConnection objConexion;
    private static string error;

    public static SqlConnection getConexion() {
        if (objConexion != null)
            return objConexion;
        objConexion = new SqlConnection();
        objConexion.ConnectionString = @"Data Source=MSI\HENRY;Initial Catalog=PROYECTO2;Integrated Security=True";
        try {
            objConexion.Open();
            return objConexion;
        }
        catch (Exception e) {
            error = e.Message;
            return null;
        }
    }
    public static void cerrarConexion() {
        if (objConexion != null)
            objConexion.Close();
    }
}