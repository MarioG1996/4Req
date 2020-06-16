<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/NavBar.Master" AutoEventWireup="true" CodeBehind="MantenedorUsuario.aspx.cs" Inherits="LProsud.Vista.MantenedorUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <div class="container">





      
            <h2 style="display: unset">Usuarios</h2>
            <button type="button" style="float: right" class="btn btn-default" onclick="location.href='CrearUsuarios.aspx'">Crear Usuario</button>

   
        <hr />

    

            <table class="table table-responsive">
                <thead style="background-color: #ccd9a5">
                    <tr>
                        <th>Usuario</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>E-Mail</th>
                        <th>Rut</th>
                        <th>Codigo Empleado</th>
                        <th>Departamento</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>jdoe</td>
                        <td>John</td>
                        <td>Doe</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                        <td>1-9</td>
                        <td>300</td>
                        <td>RR.HH</td>
                        <td>

                            <button type="button" class="btn btn-light" style="color: #738d23; border-color: #738d23;">Editar</button>

                        </td>

                    </tr>
                    <tr>
                        <td>mmoe</td>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>Doe</td>
                        <td>mary@example.com</td>
                        <td>1-9</td>
                        <td>300</td>
                        <td>RR.HH</td>
                        <td>

                            <button type="button" class="btn btn-light" style="color: #738d23; border-color: #738d23;">Editar</button>

                        </td>
                    </tr>
                    <tr>
                        <td>jdooley</td>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                        <td>1-9</td>
                        <td>300</td>
                        <td>RR.HH</td>
                        <td>

                            <button type="button" class="btn btn-light" style="color: #738d23; border-color: #738d23;">Editar</button>

                        </td>
                    </tr>


                </tbody>
            </table>

     

    </div>

</asp:Content>
