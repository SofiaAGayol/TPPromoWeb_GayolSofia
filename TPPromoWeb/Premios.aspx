<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TPPromoWeb.Premios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-1 row-cols-md-3">

        <%--<%
            foreach (dominio.Articulo art in ListaArticulos)
            {
        %>

        <div class="col">
            <div class="card card h-100">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%:art.Nombre %></h5>
                    <p class="card-text"><%:art.Descripcion %></p>
                    <a href="Login.aspx?Id=<%:art.Id %>" class="btn btn-primary">¡QUIERO ESTE!</a>
                </div>
            </div>
        </div>

        <% } %>--%>

        <asp:Repeater ID="RepeaterArticulos" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <asp:Image ID="Image1" src="<% %>" alt="..." runat="server" />
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <asp:Button id="Boton1" class="btn btn-primary" type="submit" runat="server" CommandArgument='<%#Eval("Id")%>' CommandName="ArticuloId" Text="¡QUIERO ESTE!" Onclick="Boton1_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
