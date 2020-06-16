<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/NavBar.Master" AutoEventWireup="true" CodeBehind="CierreMetas.aspx.cs" Inherits="LProsud.Vista.CierreMetas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="container" style="width: 50%;">

        <h2 style="display: unset">Cierre de Metas</h2>

        <hr />


        <form class="form-horizontal" action="/action_page.php" runat="server">
            <div class="form-group">
                <label class="control-label col-sm-2">Mes:</label>
                <div class="col-sm-10">
                    <select class="form-control">
                        <option>Enero</option>
                        <option>Febrero</option>
                        <option>Marzo</option>
                        <option>Abril</option>
                        <option>Mayo</option>
                        <option>Junio</option>
                        <option>Julio</option>
                        <option>Agosto</option>
                        <option>Septiembre</option>
                        <option>Octubre</option>
                        <option>Noviembre</option>
                        <option>Dciiembre</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Año:</label>
                <div class="col-sm-10">
                    <select class="form-control">
                        <option>2014</option>
                        <option>2015</option>
                        <option>2016</option>
                        <option>2017</option>
                        <option>2018</option>
                        <option>2019</option>
                        <option>2020</option>
                        <option>2021</option>
                        <option>2022</option>
                        <option>2023</option>
                        <option>2024</option>
                        <option>2025</option>
                    </select>
                </div>

            </div>

            <div style="float: right; margin-top: 10px;">

                <asp:Button ID="btnCierreMetas"
                    class="btn btn-default"
                    runat="server"
                    Text="Procesar"
                    OnClick="MetasClose" />
            </div>

        </form>
    </div>

</asp:Content>
