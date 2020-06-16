<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/NavBar.Master" AutoEventWireup="true" CodeBehind="CrearUsuarios.aspx.cs" Inherits="LProsud.Vista.CrearUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <div class="container" >

        <%--        <button type="button" class="btn btn-default" >Vovler</button><br />--%>

        

          
            <h2 style="display: unset">Crear Usuario</h2>

    <hr />
           
        <form class="form-horizontal" action="/action_page.php" runat="server">

            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Usuario:</label>
                <div class="col-sm-10">
               <input type="text" class="form-control" id="usuario" placeholder="Ingrese Usuario" name="usuario">
                    </div>
            </div>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Nombre:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="nombre" placeholder="Ingrese Nombre" name="nombre">
                    </div>
            </div>
            
            <div class="form-group">
                <label  class="control-label col-sm-2" for="theinput">Apellido Paterno:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="apellidoP" placeholder="Ingrese Apellido Paterno" name="apellidoP">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Apellido Materno:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="apellidoM" placeholder="Ingrese Apellido Materno" name="apellidoM">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">E Mail:</label>
                <div class="col-sm-10">
                <input type="email" class="form-control" id="mail" placeholder="Ingrese E Mail" name="mail">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Contraseña:</label>
                <div class="col-sm-10">
                <input type="password" class="form-control" id="pass" placeholder="Ingrese Contraseña" name="pass">
            </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Rut:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="rut" placeholder="Ingrese Rut" name="rut">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Codigo Empleado:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="codigoE" placeholder="Ingrese Codigo Empleado" name="codigoE">
                    </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="theinput">Departamento:</label>
                <div class="col-sm-10">
                <input type="text" class="form-control" id="depa" placeholder="Ingrese Departamento" name="depa">
                    </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="gridCheck">
                    Perfil:
                </label>
                <div class="col-sm-10">
                <input  class="form-check-input" type="checkbox" id="gridCheck1" name="Perfil">
                </div>

            </div>

            <%--            <div class="checkbox">
                <label>
                    <input type="checkbox" name="EmplCodigo">
                    EmplCodigo</label>
            </div>--%>
            <hr />
            <div style="float:right;margin-top:10px;">
              
                <asp:Button ID="Button1"
                    class="btn btn-default"
                    runat="server"
                    Text="Crear"
                    OnClick="CreateUsuario" />
                    </div>
        




            <%--<button type="submit" id="BotonCrear" class="btn btn-default" runat="server" onclick="CrearUsuario">Crear</button><br />--%>
            <%--          <asp:Button OnClick="CrearUsuario" Text="Crear" runat="server" />--%>
        </form>
         
    
        </div>
    <br />
</asp:Content>

