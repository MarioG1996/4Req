using LinqToExcel;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExcelDataReader;
using System.Data;
using System.IO;
using OfficeOpenXml;
using Microsoft.Office.Interop.Excel;

namespace LProsud.Vista
{
    public partial class CargaMetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //btnCargaMetas.Click += new EventHandler(this.cargaMetas);
        }

        protected void cargaMetas(object sender, EventArgs e)
        {
            bool error = false;
            string errorLinea = "";
            string errorRows = "";
            string errorColumns = "";


            if (FileUpload1.HasFile && Path.GetExtension(FileUpload1.FileName) == ".xlsx")
            {
                string a1 = Path.GetDirectoryName(FileUpload1.FileName);
                string a2 = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
                string a3 = Path.GetFullPath(FileUpload1.FileName);
                string a4 = Path.GetPathRoot(FileUpload1.FileName);

                ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
                using (var excel = new ExcelPackage(FileUpload1.PostedFile.InputStream))
                {
                    var tbl = new System.Data.DataTable();
                    var ws = excel.Workbook.Worksheets.First();
                    var hasHeader = true;  // adjust accordingly
                                           // add DataColumns to DataTable
                    foreach (var firstRowCell in ws.Cells[1, 1, 1, ws.Dimension.End.Column])
                    {
                        tbl.Columns.Add(hasHeader ? firstRowCell.Text
                            : String.Format("Column {0}", firstRowCell.Start.Column));
                    }

                    int celdasCount = tbl.Columns.Count;

                    if (celdasCount != ws.Dimension.End.Column)
                    {
                        error = true;
                        errorColumns = "Una o más columnas estan vacias";
                    }
                    else
                    {
                        int startRow = hasHeader ? 2 : 1;
                        for (int rowNum = startRow; rowNum <= ws.Dimension.End.Row; rowNum++)
                        {
                            var wsRow = ws.Cells[rowNum, 1, rowNum, ws.Dimension.End.Column];
                            DataRow row = tbl.NewRow();
                            foreach (var cell in wsRow)
                                row[cell.Start.Column - 1] = cell.Text;
                            tbl.Rows.Add(row);
                        }
                    }

                    // add DataRows to DataTable


                    //var msg = String.Format("DataTable successfully created from excel-file. Colum-count:{0} Row-count:{1}",
                    //                        tbl.Columns.Count, tbl.Rows.Count);    

                    if (tbl.Columns[0].ToString() != "Linea")
                    {
                        error = true;
                        errorLinea = "La primera celda debe decir 'Linea'";
                    }

                    foreach (DataRow row in tbl.Rows)
                    {
                        foreach (var item in row.ItemArray)
                        {
                            if (item.ToString().Trim() == "")
                            {
                                error = true;
                                errorRows = " Una o más celdas están vacias";
                                break;
                            }

                        }

                    }
                }
                if (error == true)
                {
                    lblModalTitle.Text = "Error de Formato";

                    if (errorLinea != "")
                    {
                        labelLinea.Text = errorLinea;
                        labelLinea.Visible = true;
                    }

                    if (errorRows != "")
                    {
                        labelRows.Text = errorRows;
                        labelRows.Visible = true;
                    }

                    if (errorColumns != "")
                    {
                        labelColumn.Text = errorColumns;
                        labelColumn.Visible = true;
                    }

                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                    upModal.Update();
                }
                else
                {
                    if (moverexcel(FileUpload1.FileName, mes.Value, anio.Value))
                    {
                        ProcesarArchivo.Visible = true;
                        Modelo.CargaMetas m = new Modelo.CargaMetas();
                        if (!m.ExcelDetalle(Convert.ToInt32(mes.SelectedIndex) + 1, Convert.ToInt32(anio.Value), FileUpload1.FileName))
                        {
                            labelColumn.Text = "No se pudieron cargar los datos del excel a la Base de Datos";
                            labelColumn.Visible = true;
                        }
                    }                                   
                }

            }
            //Response.Redirect("MantenedorUsuario.aspx", true);
        }

        public bool moverexcel(string filename, string mes, string anio)
        {
            try
            {
                string sourceFile = @"C:\Users\mgarridop\Documents\" + filename;
                string destinationFile = @"C:\ETL\" + mes + anio + ".xlsx";

                System.IO.File.Copy(sourceFile, destinationFile);

                lblModalTitle.Text = "Completado";
                labelLinea.Text = "Traspaso de Excel terminado exitosamente.";
                labelLinea.Visible = true;
                lblModalTitle.Style.Add("color","green");
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                return true;
            }
            catch (Exception e)
            {
                lblModalTitle.Text = "Error";
                labelLinea.Text = e.Message;
                labelLinea.Visible = true;
                lblModalTitle.Style.Add("color", "red");
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
                upModal.Update();
                return false;
            }

        }

        protected void procesarbtn(object sender, EventArgs e)
        {
            lblModalTitle.Text = "Procesando";
            labelLinea.Text = "Carga de Metas estará realizada una vez sea notificada por correo.";
            labelLinea.Visible = true;
            lblModalTitle.Style.Add("color", "green");
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
        }
    }
}