using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LProsud.Modelo
{
    public class CargaMetas
    {

        public bool ExcelDetalle(int mes,int anio, string nombreExcel)
        {
            conexion.Conexion c = new conexion.Conexion();
            try
            {
                c.InsertarExcelDetalle(mes, anio, nombreExcel);
                return true;
            }
            catch (Exception e)
            {
                return false;                
            }            
        }

    }
}