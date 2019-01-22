using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Consultas
/// </summary>
/// 

public class Consultas
{
    public SqlConnection conexion;
    public string error;
    public SqlConnection transaccion;
    public Consultas()
    {
        conexion = Conexion.getConexion();
    }
    public bool Autentica(string cargo, string nombreUsuario, string contraseña)
    {
        SqlCommand comando = new SqlCommand();
        comando.Connection = conexion;
        comando.CommandText = "select * from USUARIOS where CARGO_US=@cargo and USERNAME_US=@nombreUsuario and PASSWORD_US=@contraseña";
        comando.Parameters.AddWithValue("@cargo", cargo);
        comando.Parameters.AddWithValue("@nombreUsuario", nombreUsuario);
        comando.Parameters.AddWithValue("@contraseña", contraseña);
        SqlDataReader registro = comando.ExecuteReader();

        if (registro.Read())
        {
            registro.Close();
            return true;

        }
        registro.Close();
        return false;
    }

}