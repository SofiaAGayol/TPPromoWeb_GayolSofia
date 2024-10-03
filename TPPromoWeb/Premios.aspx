<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TPPromoWeb.Premios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-1 row-cols-md-3">
        <div class="col">
            <div class="card h-100">
                <asp:Image ID="Image1" src="..." alt="..." runat="server" />
                <div class="card-body">
                    <h5 class="card-title">Mochila Notebook</h5>
                    <p class="card-text">La mejor mochila que vas a tener.</p>
                    <asp:Button class="btn btn-primary" type="submit" runat="server" Text="¡QUIERO ESTE!" />
                    </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <asp:Image ID="Image2" src="..." alt="..." runat="server" />
                <div class="card-body">
                    <h5 class="card-title">Auriculares Gamer</h5>
                    <p class="card-text">Escuchá los pasos del enemigo.</p>
                    <asp:Button class="btn btn-primary" type="submit" runat="server" Text="¡NO, ESTE!" />
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100">
                <asp:Image ID="Image3" src="..." alt="..." runat="server" />
                <div class="card-body">
                    <h5 class="card-title">Mouse Gamer</h5>
                    <p class="card-text">Precisión es mi segundo nombre.</p>
                    <asp:Button class="btn btn-primary" type="submit" runat="server" Text="¡MEJOR ESTE!" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
