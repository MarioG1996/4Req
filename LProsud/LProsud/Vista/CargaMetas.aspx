<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/NavBar.Master" AutoEventWireup="true" CodeBehind="CargaMetas.aspx.cs" Inherits="LProsud.Vista.CargaMetas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <div class="container" style="width: 50%;">

        <h2 style="display: unset">Carga Metas</h2>

        <hr />

        <form class="form-horizontal" runat="server">
          
         <div class="form-group">
                <label >Mes:</label>
                
                    <select runat="server" id="mes" name="mes"  class="form-control" >
                        <option accesskey="1" value="Enero">Enero</option>
                        <option accesskey="2" value="Febrero">Febrero</option>
                        <option accesskey="3" value="Marzo">Marzo</option>
                        <option accesskey="4" value="Abril">Abril</option>
                        <option accesskey="5" value="Mayo">Mayo</option>
                        <option accesskey="6" value="Junio">Junio</option>
                        <option accesskey="7" value="Julio">Julio</option>
                        <option accesskey="8" value="Agosto">Agosto</option>
                        <option accesskey="9" value="Septiembre">Septiembre</option>
                        <option accesskey="10" value="Octubre">Octubre</option>
                        <option accesskey="11" value="Noviembre">Noviembre</option>
                        <option accesskey="12" value="Dciiembre">Dciiembre</option>
                    </select>
              </div> 
              
        <div class="form-group">
                   <label " for="theinput">Año:</label>
             
                    <select runat="server" id="anio" name="anio" class="form-control">
                        <option value="2014">2014</option>
                        <option value="2015">2015</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                        <option value="2025">2025</option>
                    </select>
             

            </div>     
                    
            </br>

            <asp:fileupload id="FileUpload1" runat="server" xmlns:asp="#unknown" />

            <div style="float: right;">
                <asp:Button ID="CargarArchivo"
                    class="btn btn-default"
                    runat="server"
                    Text="Subir"
                    OnClick="cargaMetas" 
                    onserverclick="cargaMetas"
                    xmlns:asp="#unknown"
                    />
            </div>

         

            <div style="float: right; padding-right: 5px;">
            <asp:Button ID="ProcesarArchivo"                 
                class="btn btn-procesar"
                runat="server" 
                Text="Procesar"
                OnClick="procesarbtn"
                onserverclick="procesarbtn"
                xmlns:asp="#unknown"
                Visible="false"
                />
            </div>

            <asp:ScriptManager ID="aa" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title">
                                                <asp:Label ID="lblModalTitle" runat="server" Text=""></asp:Label></h4>
                                        </div>

                                        <div class="modal-body">
                                            <asp:Label ID="labelLinea" Visible="false" runat="server" Text=""></asp:Label><br />
                                            <div id="rowdiv" style="visibility: inherit">
                                                <asp:Label ID="labelRows" Visible="false" runat="server" Text=""></asp:Label>
                                            </div>
                                            <asp:Label ID="labelColumn" Visible="false" runat="server" Text=""></asp:Label>
                                            <asp:Label ID="labelCargaExcel" Visible="false" runat="server" Text=""></asp:Label>
                                        </div>

                                        <div class="modal-footer">
                                            <button class="btn btn-info" data-dismiss="modal" aria-hidden="true">Cerrar</button>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>


        </form>
    </div>

</asp:Content>
