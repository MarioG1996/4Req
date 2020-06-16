using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LProsud.conexion
{
    class Conexion
    {

        public SqlConnection procesadorabd()
        {
            SqlConnection sql_conexion = new SqlConnection(@"Data Source=10.0.0.10;Initial Catalog=Prueba;user=sa;pwd=Procesadora1");
            sql_conexion.Open();

            return sql_conexion;
        }

        public SqlConnection procesadoraAnalisis()
        {
            SqlConnection sql_conexion = new SqlConnection(@"Data Source=192.168.1.68;Initial Catalog=procesadora_analisis;user=sa;pwd=procesadora1");
            sql_conexion.Open();

            return sql_conexion;
        }

        //public void InsertarUsuario(string nombre, string clave, int admin, int codigo)
        //{
        //    using (procesadorabd())
        //    {
        //        SqlCommand cmd = new SqlCommand("SP_CreateUser", procesadorabd());
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.Add("@UsrsNombre", SqlDbType.VarChar).Value = nombre;
        //        cmd.Parameters.Add("@UsrsClave", SqlDbType.VarChar).Value = clave;
        //        cmd.Parameters.Add("@UsrsAdmin", SqlDbType.VarChar).Value = admin;
        //        cmd.Parameters.Add("@EmplCodigo", SqlDbType.VarChar).Value = codigo;
        //        cmd.ExecuteNonQuery();
        //    }
        //}

        public void InsertarExcelDetalle(int mes, int anio, string nombreExcel)
        {
            using (procesadoraAnalisis())
            {
                SqlCommand cmd = new SqlCommand("SP_InsercionExcelDetalle", procesadoraAnalisis());
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@mes", SqlDbType.VarChar).Value = mes;
                cmd.Parameters.Add("@anio", SqlDbType.VarChar).Value = anio;
                cmd.Parameters.Add("@nombreExcel", SqlDbType.VarChar).Value = nombreExcel;
                cmd.ExecuteNonQuery();
            }
        }

    }
}