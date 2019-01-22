using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public class CRUD
    {
    Conexion bd = new Conexion();
    SqlConnection conn = new SqlConnection();
    private SqlDataAdapter da;

    public DataTable Consult(string nombreTabla)
    {
        DataTable dt;
        conn= Conexion.getConexion();
        SqlCommand comand = new SqlCommand("SELECT * FROM " + nombreTabla ,conn);
        dt = new DataTable();
        da = new SqlDataAdapter(comand);
        da.Fill(dt);
        return dt;
    }
    
    public string InsertCases(int casID,int paqID, string name,string start,string end, int hours,string state)
    {
        try
        {
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("INSERT INTO CASOS(CAS_ID,PAQ_ID,CAS_NOMBRE,CAS_FECHA_INICIO,CAS_FECHA_CIERRE," +
                "CAS_HORAS_EFECTIVAS,CAS_ESTADO) VALUES(" + casID + "," + paqID + ",'" + name + "','" + start + "','" + end + "',"
                + hours + ",'" + state + "')", conn);
            comand.ExecuteNonQuery();
            return "Ingresado Correctamente";
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }

    public string InsertPackets(int paqID, int conID, int proID, string name, string start, string end, string type, string observ)
    {
        try
        {
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("INSERT INTO PAQUETES(PAQ_ID,CON_ID,PRO_ID,PAQ_NOMBRE,PAQ_FECHA_APERTURA," +
                "PAQ_FECHA_CIERRE,PAQ_TIPO,PAQ_OBSERVACIONES) VALUES(" + paqID + "," + conID + "," + proID + ",'" + name + "','" +
                start + "','" + end + "','" + type + "','" + observ + "')", conn);
            comand.ExecuteNonQuery();
            return "Ingresado Correctamente";
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    public string InsertProduct(int proID, string linea, string sublinea, string prod, string subprod)
    {
        try
        {
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("INSERT INTO PRODUCTO(PRO_ID,PRO_LINEA_NEGOCIO,PRO_SUBLINEA_NEGOCIO," +
                "PRO_PRODUCTO,PRO_SUBPRODUCTO) VALUES(" + proID + ",'" + linea + "','" + sublinea + "','" + prod + "','" 
                + subprod + "')", conn);
            comand.ExecuteNonQuery();
            return "Ingresado Correctamente";
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    public string InsertCaseDetail(int detID, int casID, string name, string start, string end, int hours, string desc, 
        string detail, string tecName, string tecLName)
    {
        try
        {
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("INSERT INTO DETALLES_DE_CASO(DET_CAS_ID,CAS_ID,DET_NOMBRE,DET_FECHA_INICIO," +
                "DET_FECHA_CIERRE,DET_HORAS_EFECTIVAS,DET_DESCRIPCION,DET_DETALLE,NOMBRE_TEC,APELLIDO_TEC) " +
                "VALUES(" + detID + "," + casID + ",'" + name + "','" + start + "','" + end + "'," + hours + ",'" + desc +
                "','" + detail + "','" + tecName + "','" + tecLName + "')", conn);
            comand.ExecuteNonQuery();
            return "Ingresado Correctamente";
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    public string Delete(string table, string condition)
    {
        try
        {
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("DELETE FROM " + table  + " WHERE " + condition, conn);
            comand.ExecuteNonQuery();
            return "Borrado Correctamente";
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    public string Update(string table, string values, string condition)
    {
        try
        {
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("UPDATE " + table + " SET " + condition , conn);
            comand.ExecuteNonQuery();
            return "Actualizado Correctamente";
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }

    public DataTable Search(string table, string condition)
    {
        try
        {
            DataTable dt;
            conn = Conexion.getConexion();
            SqlCommand comand = new SqlCommand("SELECT * FROM " + table + " WHERE " + condition, conn);
            dt = new DataTable();
            da = new SqlDataAdapter(comand);
            da.Fill(dt);
            return dt;
        }
        catch
        {
            return null;
        }
    }
}